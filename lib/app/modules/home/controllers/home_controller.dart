import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:testapp/app/tdLibJson/tdlibjson_api.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  late NativeLibrary td;
  startService() async {
    td = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
    final client = td.td_json_client_create();
    const getAuthState = GetAuthorizationState();
    td.td_json_client_send(
        client, getAuthState.toJson().toString().toCString());
    startReciever(client);
  }

  startReciever(ffi.Pointer<ffi.Void> client) async {
    while (true) {
      await Future.delayed(100.milliseconds);
      final rawData = td.td_json_client_receive(client, 10);
      final data = rawData.toDString();
      final jsonData = json.decode(data);
      final authState = jsonData["@type"].toString();
      if (authState == "updateAuthorizationState") {
        final authType = jsonData["@type"].toString();
        if (authType == "authorizationStateClosed") {
          Get.snackbar("Info", "Client Closed");
          break;
        } else if (authType == "authorizationStateWaitTdlibParameters") {
          Get.snackbar("Info", authType);
          const tdParams = SetTdlibParameters(
            useTestDc: true,
            useSecretChats: true,
            useFileDatabase: true,
            useMessageDatabase: true,
            useChatInfoDatabase: true,
            apiId: 12860793,
            apiHash: "668c3c09dc67819c912c918db5648cf1",
            applicationVersion: "v1",
            systemVersion: "",
            systemLanguageCode: "en",
            deviceModel: "Android 13",
            databaseDirectory: "/sdcard/Movies",
            databaseEncryptionKey: "Test Key",
            filesDirectory: "/sdcard/Movies",
            ignoreFileNames: false,
            enableStorageOptimizer: true,
          );
          Get.snackbar("Td Params", tdParams.toJson().toString());
          td.td_json_client_send(
              client, tdParams.toJson().toString().toCString());
        } else if (authType == "authorizationStateWaitPhoneNumber") {
          Get.snackbar("Login", "Login with phone number");
          const phoneNumData = SetAuthenticationPhoneNumber(
            phoneNumber: "+918709526508",
          );
          Get.snackbar("Phone num", phoneNumData.toString());
          td.td_json_client_send(
              client, phoneNumData.toJson().toString().toCString());
        } else if (authType == "authorizationStateWaitCode") {
          Get.snackbar("Info", "Auth code sended");
          Get.snackbar("Data", jsonData);
        }
      } else {
        Get.snackbar("Data", jsonData.toString());
      }
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
