import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:isolate';

import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
  List<String> names = [];
  TextEditingController valOne = TextEditingController();
  TextEditingController valTwo = TextEditingController();
  List<int> age = [];
	RxInt sum = 0.obs;
  List<String> addess = [];
  ReceivePort receivePort = ReceivePort();


	nativeAdd(int val1, int val2){
		NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libstorage.so"));
		sum.value = lib.add(val1, val2);
	}
}

