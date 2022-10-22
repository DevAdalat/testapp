import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:ffi';
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
    final isoData = IsolateTdlib(
			libname: "libtdjson.so",
        client: tdlibClient.address, port: receivePort.sendPort, timeOut: 10);
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

    while (true) {
      await Future.delayed(100.milliseconds);
			isolateTdlib.isolateTdlib();
//    final tdResData = tg.td_json_client_receive(
//        Pointer.fromAddress(isolateTdlib.client).cast<ffi.Void>(),
//        isolateTdlib.timeOut);
//		isolateTdlib.port.send(tdResData.address);
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
  int client;

	String libname;

  SendPort port;

  double timeOut;

  IsolateTdlib({
    required this.client,
    required this.port,
		required this.libname, 
    required this.timeOut,
  });

	void isolateTdlib(){
		NativeLibrary lib = NativeLibrary(DynamicLibrary.open(libname));
		final ptrData = lib.td_json_client_receive(Pointer.fromAddress(client).cast<ffi.Void>(), timeOut);
		port.send(ptrData.address);
	}
}
