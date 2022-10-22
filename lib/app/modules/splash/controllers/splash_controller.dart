import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxString count = "".obs;
  getAuthState() async {
    final tg = TdlibInterface();
    const authState = GetAuthorizationState();
    tg.sendData(authState.toJson());
    ReceivePort port = ReceivePort();
    Isolate.spawn(isolateCount, port.sendPort);
    port.listen((message) {
			count.value = message;
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

isolateTdReceive(IsolateTdlib isolateTdlib) {
  final lib = isolateTdlib.lib;
  final client = isolateTdlib.client;
  Timer.periodic(100.milliseconds, (timer) {
    final rawData = lib.td_json_client_receive(client, isolateTdlib.timeOut);
    if (rawData != nullptr) {
      isolateTdlib.port.send(rawData.cast<Utf8>().toDartString());
    } else {
      isolateTdlib.port.send("Empty data");
    }
  });
}
