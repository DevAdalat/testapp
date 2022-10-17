import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:testapp/generated_bindings.dart';

class HomeController extends GetxController {
	final valController = TextEditingController();
  late NativeLibrary td;
	late ffi.Pointer<ffi.Void> client;

  startService(String data) async {
		final rawData = data.toCString();
		td.td_json_client_send(client, rawData);
		final rawRecData = td.td_json_client_receive(client, 10);
		final recData = rawRecData.toDString();
		Get.snackbar("Td Data", recData);	
  }

  @override
  onInit() {
    super.onInit();
    td = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
		client = td.td_json_client_create();

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
