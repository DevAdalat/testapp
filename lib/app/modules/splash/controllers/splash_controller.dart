import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';

class SplashController extends GetxController {
  RxString count = "Login".obs;
  getAuthState() async {
    final tg = TdlibInterface();
    const authState = GetAuthorizationState();
    tg.sendData(authState.toJson());
    ReceivePort port = ReceivePort();
    final isoData = IsolateTdlib(
        lib: tg.tdJsonNative,
        port: port.sendPort,
        client: tg.tdlibClient,
        timeOut: 10);
    Isolate.spawn(isolateTdReceive, isoData);
    port.listen((message) {
      CustomSnackbar.customSnackbar(message.toString());
    });
  }
}

isolateCount(SendPort port) {
  int aa = 0;
  Timer.periodic(100.milliseconds, (timer) {
    aa++;
    port.send(aa.toString());
  });
}

isolateTdReceive(IsolateTdlib isolateTdlib) async {
  final lib = isolateTdlib.lib;
  final client = isolateTdlib.client;
  try {
    while (true) {
      await Future.delayed(100.milliseconds);
      final rawData = lib.td_json_client_receive(client, isolateTdlib.timeOut);
      if (rawData != nullptr) {
        isolateTdlib.port.send(rawData.cast<Utf8>().toDartString());
      } else {
        isolateTdlib.port.send("Empty data");
      }
    }
  } catch (e) {
    CustomSnackbar.customSnackbar(e.toString());
  }
}
