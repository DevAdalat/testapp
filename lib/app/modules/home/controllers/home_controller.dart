import 'dart:ffi' as ffi;
import 'dart:ffi';
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
  var imageSize = "".obs;
  var apkSize = "".obs;
  var videosSize = "".obs;
  var audiosSize = "".obs;
  var docsSize = "".obs;

  handlePermission() async {
    PermissionStatus status = await Permission.manageExternalStorage.status;
    PermissionStatus status1 = await Permission.storage.status;
    if (status.isDenied || status1.isDenied) {
      await Permission.manageExternalStorage.request();
      await Permission.storage.request();
    }
  }

  getData() {
    NativeLibrary lib = NativeLibrary(DynamicLibrary.open("librtest.so"));
    var rawList = lib.get_list();
    var data = rawList.cast<ffi.Pointer<Utf8>>();
    final namesData = toStringList(data).toList();
		Get.snackbar("Names", namesData.toString());
    update();
    malloc.free(data);
    malloc.free(rawList);
  }

//rustGreet(String name) {
//  handlePermission();
//  var value = name.toNativeUtf8().cast<ffi.Char>();
//  try {
//    NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
//    greet.value = lib.rust_greeting(value).cast<Utf8>().toDartString();
//    lib.rust_cstr_free(value);
//  } catch (e) {
//    Get.snackbar("Error", e.toString());
//  }
//}

//getAllSizeImage(String dirPath) async {
//  handlePermission();
//  NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
//  var path = dirPath.toNativeUtf8().cast<ffi.Char>();
//  greet.value = "Loading";
//	imageSize.value = lib.init_image_size(path).toDString();
//	videosSize.value = lib.init_videos_size(path).toDString();
//	apkSize.value = lib.init_apks_size(path).toDString();
//	audiosSize.value = lib.init_musics_size(path).toDString();
//	docsSize.value = lib.init_docs_size(path).toDString();
//  lib.rust_cstr_free(path);
//  int count = 0;
//  while (true) {
//		await Future.delayed(100.milliseconds);
//		count++;
//  	if (lib.is_image_size_work_done().toDString() == "true") {
//  		imageSize.value = lib.get_image_size().toDString();
//			break;
//  	} else {
//			greet.value = count.toString();
//		}
//  }
//  while (true) {
//		await Future.delayed(100.milliseconds);
//  	if (lib.is_videos_size_work_done().toDString() == "true") {
//  		videosSize.value = lib.get_videos_size().toDString();
//			break;
//  	}
//  }
//  while (true) {
//		await Future.delayed(100.milliseconds);
//  	if (lib.is_docs_size_work_done().toDString() == "true") {
//  		docsSize.value = lib.get_docs_size().toDString();
//			break;
//  	}
//  }
//  while (true) {
//		await Future.delayed(100.milliseconds);
//  	if (lib.is_musics_size_work_done().toDString() == "true") {
//  		audiosSize.value = lib.get_musics_size().toDString();
//			break;
//  	}
//  }

//  while (true) {
//		await Future.delayed(100.milliseconds);
//  	if (lib.is_apk_size_work_done().toDString() == "true") {
//  		apkSize.value = lib.get_apk_size().toDString();
//			break;
//  	}
//  }

//}

  @override
  dispose() {
    super.dispose();
    valOne.dispose();
  }

  Iterable<String> toStringList(
      Pointer<Pointer<Utf8>> charPointerPointer) sync* {
    int index = 0;
    while (true) {
      final charPointer = charPointerPointer[index];
      if (charPointer == nullptr) {
        break;
      }
      yield charPointer.toDartString();
      index++;
    }
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
