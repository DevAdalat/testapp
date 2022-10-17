import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:testapp/app/tdLibJson/tdlibjson_api.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  late NativeLibrary td;
  startService() async {
    final client = td.td_json_client_create();
    const authState = GetAuthorizationState();
    td.td_json_client_send(client, authState.toJson().toString().toCString());
    startReciever(client);
  }

  startReciever(ffi.Pointer<ffi.Void> client) async {
    while (true) {
      await Future.delayed(100.milliseconds);
      final rawData = td.td_json_client_receive(client, 10);
      final data = rawData.toDString();
      if (data.contains("authorizationStateWaitTdlibParameters")) {
        const tdParam = SetTdlibParameters(
          ignoreFileNames: false,
          useTestDc: true,
          useSecretChats: true,
          useFileDatabase: false,
          useMessageDatabase: false,
          useChatInfoDatabase: false,
          apiId: 12860793,
          apiHash: "668c3c09dc67819c912c918db5648cf1",
          applicationVersion: "v1",
          systemVersion: "",
          systemLanguageCode: "en",
          deviceModel: "Mi 10i",
          databaseDirectory: "/sdcard/Movies",
          databaseEncryptionKey: "Testkey",
          filesDirectory: "/sdcard/Movies",
          enableStorageOptimizer: true,
        );
        td.td_json_client_send(client, tdParam.toJson().toString().toCString());
      }
      Get.snackbar("Td Data", data);
      break;
    }
  }

  @override
  onInit() {
    super.onInit();
    td = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
  }
}

extension CString on String {
  ffi.Pointer<ffi.Char> toCString() {
    return toNativeUtf8().cast<ffi.Char>();
  }
}

extension DString on ffi.Pointer<ffi.Char> {
  String toDString() {
    return cast<Utf8>().toDartString();
  }
}
