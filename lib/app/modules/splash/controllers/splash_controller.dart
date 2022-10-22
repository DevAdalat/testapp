import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';

class SplashController extends GetxController {
  getAuthState() async {
    final tg = TdlibInterface();
    const authState = GetAuthorizationState();
    tg.sendData(authState.toJson());
		ReceivePort port = ReceivePort();
		Isolate.spawn(isolateCount, port.sendPort);
		port.listen((message) {
			CustomSnackbar.customSnackbar(message.toString());
		});
 }
}

isolateCount(SendPort port){
	Timer.periodic(3.seconds, (timer) {
		port.send("Hello from multithread");
	});
}

isolateTdReceive(IsolateTdlib isolateTdlib) {
		final lib = isolateTdlib.lib;
		final client = isolateTdlib.client;
		Timer.periodic(100.milliseconds, (timer) {
			final rawData =  lib.td_json_client_receive(client, isolateTdlib.timeOut);
			if (rawData != nullptr) {
				isolateTdlib.port.send(rawData.toDString());
			} else {
				isolateTdlib.port.send("Empty data");
			}
	});
}
