import 'dart:ffi' as ffi;
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  List<String> names = [];
  TextEditingController valOne = TextEditingController();
  List<int> age = [];
  RxInt sum = 0.obs;
  RxString greet = "".obs;
  List<String> addess = [];

   rustGreet(String name) {
	var value = name.toNativeUtf8().cast<ffi.Char>();
		Get.snackbar("String", value.toString());
    try {
      NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
      greet.value = lib
          .rust_greeting(value)
          .cast<Utf8>()
          .toDartString();
			lib.rust_cstr_free(value);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
	 
	 @override
  dispose(){
    super.dispose();
		 valOne.dispose();
	 }
}
