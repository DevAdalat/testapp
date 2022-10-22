import 'dart:convert';

import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';

class SplashController extends GetxController {
  getAuthState() async {
    final tg = TdlibInterface();
    const authState = GetAuthorizationState();
    tg.sendData(authState.toJson());
    tg.receiveData().listen((message) { 
			final tdData = json.decode(message);
			CustomSnackbar.customSnackbar(tdData.toString());
		});
  }
}
