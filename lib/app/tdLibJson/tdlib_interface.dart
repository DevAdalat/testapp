import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:isolate';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';
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
    try {
      IsolateTdTransfer isolateTdlib = IsolateTdTransfer(
          libname: "libtdjson.so",
          client: tdlibClient.address,
          sendPort: receivePort.sendPort,
          timeout: 10);
      Isolate.spawn(_isolatetdReceive, isolateTdlib);
    } catch (e) {
      CustomSnackbar.customSnackbar(e.toString());
    }
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
}

void _isolatetdReceive(IsolateTdTransfer isolateTdlib) async {
  try {
    NativeLibrary lib =
        NativeLibrary(DynamicLibrary.open(isolateTdlib.libname));
    while (true) {
      await Future.delayed(100.milliseconds);
      final ptrData = lib.td_json_client_receive(
          Pointer.fromAddress(isolateTdlib.client).cast<Void>(),
          isolateTdlib.timeout);
      isolateTdlib.sendPort.send(ptrData.address);
    }
  } catch (e) {
    isolateTdlib.sendPort.send(e.toString().toNativeUtf8().address);
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

class IsolateTdTransfer {
  String libname;
  int client;
  double timeout;
  SendPort sendPort;
  IsolateTdTransfer(
      {required this.libname,
      required this.client,
      required this.sendPort,
      required this.timeout});
}
