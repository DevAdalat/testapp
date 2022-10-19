import 'dart:convert';
import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:testapp/app/tdLibJson/tdlibjson_api.dart'
    show
        GetAuthorizationState,
        SetLogVerbosityLevel,
        SetTdlibParameters,
        CheckAuthenticationCode,
        SetAuthenticationPhoneNumber;
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  final valController = TextEditingController();
  List<String> logs = ["Empty"];
  NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
  final scontroller = ScrollController();
  final userDataController = TextEditingController();
  final otpController = TextEditingController();
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
    SetLogVerbosityLevel logLevel =
        const SetLogVerbosityLevel(newVerbosityLevel: 4);
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
      filesDirectory: "/sdcard/Alarms",
      enableStorageOptimizer: true,
      databaseEncryptionKey: base64.encode(utf8.encode("Hello")),
    );
    lib.td_json_client_execute(client(), logLevel.toJson().toCString());
    final rawLogOutData = lib.td_json_client_receive(client(), 10);
    final logOutput = "Log level: ${rawLogOutData.toDString()}";
    logs.add(logOutput);
    lib.td_json_client_send(
        client(), const GetAuthorizationState().toJson().toCString());
    while (true) {
      await Future.delayed(100.milliseconds);
      final rawAuthData = lib.td_json_client_receive(client(), 10);
      final authData = rawAuthData.toDString();
      final jsonAuthData = json.decode(authData);
      if (jsonAuthData["@type"] == "updateAuthorizationState") {
        final authState = jsonAuthData["authorization_state"];
        if (authState["@type"] == "authorizationStateClosed") {
          Get.snackbar("Info", "App Closed");
          break;
        } else if (authState["@type"] ==
            "authorizationStateWaitTdlibParameters") {
          lib.td_json_client_send(client(), tdParam.toJson().toCString());
        } else if (authState["@type"] == "authorizationStateWaitPhoneNumber") {
          sendNumber() {
            lib.td_json_client_send(
                client(),
                SetAuthenticationPhoneNumber(
                        phoneNumber: userDataController.text)
                    .toJson()
                    .toCString());
          }

          await Get.dialog(
            AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: const Text("Phone Number"),
                content: Center(
                  child: TextField(
                    controller: userDataController,
                    decoration: const InputDecoration(
                      hintText: "Enter phone number",
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: ((() {
                      Get.back();
                      sendNumber();
                    })),
                    child: const Text("Send"),
                  ),
                ]),
          );
        } else if (authState["@type"] == "authorizationStateWaitCode") {
          sendOtp() {
            lib.td_json_client_send(
                client(),
                CheckAuthenticationCode(code: otpController.text)
                    .toJson()
                    .toCString());
          }

          await Get.dialog(
            AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: const Text("Enter OTP"),
                content: Center(
                  child: TextField(
                    controller: otpController,
                    decoration: const InputDecoration(
                      hintText: "Enter OTP",
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: ((() => sendOtp())),
                    child: const Text("Send"),
                  ),
                ]),
          );
        }
      } else {
        if (jsonAuthData["@type"] == "error") {
          Get.snackbar("Td Error", jsonAuthData.toString());
        } else {
          logs.add(jsonAuthData.toString());
          update();
        }
      }
    }
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
