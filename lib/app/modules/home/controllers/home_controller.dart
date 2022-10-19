import 'dart:convert';
import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:testapp/app/tdLibJson/tdlibjson_api.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  final valController = TextEditingController();
  List<String> logs = ["Empty"];
  NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
  final scontroller = ScrollController();

  ffi.Pointer<ffi.Void> client() => lib.td_json_client_create();

//late NativeLibrary td;
//late ffi.Pointer<ffi.Void> client;

//startService(String data) async {
//  while (true) {
//    await Future.delayed(100.milliseconds);
//    final rawData = data.toCString();
//    td.td_json_client_send(client, rawData);
//    final rawRecData = td.td_json_client_receive(client, 10);
//    final recData = rawRecData.toDString();
//    Get.snackbar("Td Data", recData);
//    if (recData.contains("error")) {
//      malloc.free(rawRecData);
//      malloc.free(rawData);
//      break;
//    }
//  }
//}
  requestPermission() async {
    PermissionStatus manageStorageStatus =
        await Permission.manageExternalStorage.status;
    PermissionStatus storagePermStatus =
        await Permission.manageExternalStorage.status;
    if (manageStorageStatus.isDenied || storagePermStatus.isDenied) {
      await Permission.manageExternalStorage.request();
      await Permission.storage.request();
    }
  }

  startReceiver() async {
    while (true) {
      await Future.delayed(100.milliseconds);
      final data = lib.td_json_client_receive(client(), 10).toDString();
      logs.add(data);
      update();
      if (data.contains("authorizationStateWaitTdlibParameters")) {
        final tdParam = SetTdlibParameters(
          useTestDc: true,
          useSecretChats: true,
          useFileDatabase: true,
          useMessageDatabase: true,
          useChatInfoDatabase: true,
          apiId: 12860793,
          apiHash: "668c3c09dc67819c912c918db5648cf1",
          ignoreFileNames: true,
          applicationVersion: "v1",
          systemVersion: "",
          systemLanguageCode: "en",
          deviceModel: "Android 13",
          databaseDirectory: "/sdcard/Movies",
          filesDirectory: "/sdcard/rom",
          enableStorageOptimizer: true,
          databaseEncryptionKey: base64.encode(utf8.encode("Hello")),
        );
        lib.td_json_client_send(client(), tdParam.toJson().toCString());
        await Future.delayed(1.seconds);
      } else if (data.contains("authorizationStateWaitPhoneNumber")) {
        const phoneParam = SetAuthenticationPhoneNumber(
          phoneNumber: "+918709526508",
        );
        lib.td_json_client_send(client(), phoneParam.toJson().toCString());
        await Future.delayed(1.seconds);
      } else if (data.contains("error")) {
        logs.add(data);
        update();
        break;
      }
    }
  }

  @override
  onInit() {
    super.onInit();
//  td = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
//  client = td.td_json_client_create();
  }

  @override
  dispose() {
    super.dispose();
    valController.dispose();
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
