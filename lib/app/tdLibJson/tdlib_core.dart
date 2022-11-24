import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:tfile/app/tdLibJson/tdlib_native.dart';

class TDLibCore {
  static late TDLibNative _tdlib;
  static late Pointer<Void> client;
  static void initialize() {
    _tdlib = TDLibNative(DynamicLibrary.open("libtdjson.so"));
    client = _tdlib.td_json_client_create();
  }

  static void sendData(String data) {
    final request = data.toCString();
    _tdlib.td_json_client_send(client, request);
    calloc.free(request);
  }

  static String receiveData() {
    final rawPtr = _tdlib.td_json_client_receive(client, 10);
    final data = rawPtr.toDString();
    calloc.free(rawPtr);
    return data;
  }

  static void closeTdlib() {
    _tdlib.td_json_client_destroy(client);
  }
}

extension ToCString on String {
  Pointer<Char> toCString() {
    return toNativeUtf8().cast<Char>();
  }
}

extension ToDString on Pointer<Char> {
  String toDString() {
    final charPoint = cast<Utf8>();
    final dString = charPoint.toDartString();
    calloc.free(charPoint);
    return dString;
  }
}
