import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';

class SplashController extends GetxController {
  var aaaa = "".obs;
  getAuthState() async {
    try {
      CustomSnackbar.customSnackbar("Started");
			final tdlib = TdlibInterface();
			final client = tdlib.tdlibClient;
      Adalat aaa = Adalat(client: client.address);
      aaa.tdReceive().listen(((message) {
        final data = Pointer.fromAddress(message).cast<Utf8>().toDartString();
        CustomSnackbar.customSnackbar(data);
      }));
    } catch (e) {
      CustomSnackbar.customSnackbar(e.toString());
    }
  }
}
