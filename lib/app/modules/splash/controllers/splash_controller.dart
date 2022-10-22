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
		final isoData = IsolateTdlib(lib: tg.tdJsonNative, client: tg.tdlibClient, port: port.sendPort, timeOut: 10);
		Isolate.spawn(_isolateTdReceive, isoData);
		port.listen((message) {
			CustomSnackbar.customSnackbar(message.toString());
		});
		
 }
	_isolateTdReceive(IsolateTdlib isolateTdlib) {
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
}
