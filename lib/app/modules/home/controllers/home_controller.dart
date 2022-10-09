import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  List<String> names = [];
  TextEditingController valOne = TextEditingController();
  TextEditingController valTwo = TextEditingController();
  List<int> age = [];
	RxInt sum = 0.obs;
	RxString greet = "".obs;
  List<String> addess = [];

  test(String name){
		NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
	}

}

