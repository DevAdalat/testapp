// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:tfile/app/tdLibJson/tdclient/interface/td_plugin.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';
import 'package:tfile/generated_bindings.dart';
import 'package:ffi/ffi.dart';
import 'package:get/get.dart';

class TdlibJson extends TDPlugin {
  static void initialize() {
    try {
      final tdjson = TdlibJson().loadTDLib();
      Get.put(tdjson);
      Get.put(tdjson.td_json_client_create(), tag: "tdlibClient");
    } catch (e) {
      CustomSnackbar.customSnackbar(e.toString());
    }
  }

  @override
  NativeLibrary loadTDLib() {
    final lib = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
    return lib;
  }

  @override
  Pointer<Void> td_json_client_create() {
    return loadTDLib().td_json_client_create();
  }

  @override
  void td_json_client_destroy(Pointer<Void> client) {
    loadTDLib().td_json_client_destroy(client);
    malloc.free(client);
  }

  @override
  Pointer<Char> td_json_client_execute(
      Pointer<Void> client, Pointer<Char> request) {
    return loadTDLib().td_json_client_execute(client, request);
  }

  @override
  Pointer<Char> td_json_client_receive(Pointer<Void> client, double timeout) {
    return loadTDLib().td_json_client_receive(client, timeout);
  }

  @override
  void td_json_client_send(Pointer<Void> client, Pointer<Char> request) {
    loadTDLib().td_json_client_send(client, request);
    malloc.free(request);
  }
}
