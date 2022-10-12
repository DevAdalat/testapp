import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  List<String> names = [];
  TextEditingController valOne = TextEditingController();
  List<int> age = [];
  RxInt sum = 0.obs;
  RxString greet = "".obs;
  List<String> addess = [];

  handlePermission() async {
    PermissionStatus status = await Permission.manageExternalStorage.status;
    PermissionStatus status1 = await Permission.storage.status;
    if (status.isDenied || status1.isDenied) {
      await Permission.manageExternalStorage.request();
      await Permission.storage.request();
    }
  }

  rustGreet(String name) {
    handlePermission();
    var value = name.toNativeUtf8().cast<ffi.Char>();
    try {
      NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
      greet.value = lib.rust_greeting(value).cast<Utf8>().toDartString();
      lib.rust_cstr_free(value);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  getAllSizeImage(String dirPath) async {
    handlePermission();
    NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
    var path = dirPath.toNativeUtf8().cast<ffi.Char>();
    greet.value = lib.get_images_size(path).cast<Utf8>().toDartString();
    lib.rust_cstr_free(path);
    while (true) {
      await Future.delayed(200.milliseconds);
      if (Platform.environment["PNG_SIZE_STATUS"] != "LOADING") {
        greet.value = Platform.environment["PNG_SIZE"] ?? "FAILED";
        break;
      }
    }
    Get.snackbar("Status", "Done");
  }

  @override
  dispose() {
    super.dispose();
    valOne.dispose();
  }
}
