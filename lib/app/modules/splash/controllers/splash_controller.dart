import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';
import 'package:tfile/generated_bindings.dart';

class SplashController extends GetxController {
  getAuthState() async {
		NativeLibrary lib = NativeLibrary(DynamicLibrary.open("libtdjson.so"));
		final client = lib.td_json_client_create();
		final authState = GetAuthorizationState();
		lib.td_json_client_send(client, authState.toJson().toCString());
		final adalat = Adalat(client: client.address);
		adalat.tdReceive().listen(((message) {
			CustomSnackbar.customSnackbar(message);
		}));
 }
}
