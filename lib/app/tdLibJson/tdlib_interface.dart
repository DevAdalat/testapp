import 'dart:ffi' as ffi;
import 'package:tfile/generated_bindings.dart';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';

class TdlibInterface {
  final tdJsonNative = Get.find<NativeLibrary>();
  final tdlibClient = Get.find<ffi.Pointer<ffi.Void>>(tag: "tdlibClient");

  void sendData(String request) {
    final requestPtr = request.toCString();
    tdJsonNative.td_json_client_send(tdlibClient, requestPtr);
    malloc.free(requestPtr);
  }

  String receiveData() {
    final rawData = tdJsonNative.td_json_client_receive(tdlibClient, 10);
    if (rawData == ffi.Pointer.fromAddress(0)) {
      return "empty_data";
    } else {
      final data = rawData.toDString();
      malloc.free(rawData);
      return data;
    }
  }

  String tdExecute(String request) {
    final rawRequest = request.toCString();
    final rawData =
        tdJsonNative.td_json_client_execute(tdlibClient, rawRequest);
    if (rawData == ffi.Pointer.fromAddress(0)) {
      return "empty_data";
    } else {
      final data = rawData.toDString();
      malloc.free(rawRequest);
      malloc.free(rawData);
      return data;
    }
  }

  void tdDestroy() {
    tdJsonNative.td_json_client_destroy(tdlibClient);
    malloc.free(tdlibClient);
    Get.delete<ffi.Pointer<ffi.Void>>(tag: "tdlibClient");
  }
}

extension ToCString on String {
  ffi.Pointer<ffi.Char> toCString() {
    return toNativeUtf8().cast<ffi.Char>();
  }
}

extension ToDString on ffi.Pointer<ffi.Char> {
  String toDString() {
    return cast<Utf8>().toDartString();
  }
}