import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:ffi' show nullptr;
import 'dart:isolate';
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

   ReceivePort receiveData() {
    ReceivePort receivePort = ReceivePort();
		final isoData = IsolateTdlib(lib: tdJsonNative, client: tdlibClient, port: receivePort.sendPort, timeOut: 10);
    Isolate.spawn(_isolatetdReceive, isoData);
		return receivePort;
  }

  String tdExecute(String request) {
    final rawRequest = request.toCString();
    final rawData =
        tdJsonNative.td_json_client_execute(tdlibClient, rawRequest);
    if (rawData == nullptr) {
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

  void _isolatetdReceive(IsolateTdlib isolateTdlib) async {
    NativeLibrary tg = isolateTdlib.lib;
    while (true) {
      await Future.delayed(100.milliseconds);
      final tdResData =
          tg.td_json_client_receive(isolateTdlib.client, isolateTdlib.timeOut);
      if (tdResData == nullptr) {
        isolateTdlib.port.send("Empty data");
      } else {
        isolateTdlib.port.send(tdResData.toDString());
      }
    }
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

class IsolateTdlib {
  NativeLibrary lib;

  ffi.Pointer<ffi.Void> client;

  SendPort port;

  double timeOut;

  IsolateTdlib(
      {required this.lib,
      required this.client,
      required this.port,
      required this.timeOut,});
}
