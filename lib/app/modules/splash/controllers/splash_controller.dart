import 'dart:convert';

import 'package:tfile/app/config/config.dart';
import 'package:tfile/app/modules/emailAuth/views/email_auth_view.dart';
import 'package:tfile/app/modules/login/views/login_view.dart';
import 'package:tfile/app/modules/newUser/views/new_user_view.dart';
import 'package:tfile/app/modules/otp/views/otp_view.dart';
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:get/get.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart';

class SplashController extends GetxController {
  getAuthState() async {
    try {
      final tg = TdlibInterface();
      const authState = GetAuthorizationState();
      tg.sendData(authState.toJson());
			while (true) {
				await Future.delayed(100.milliseconds);
				final data =  tg.receiveData();
				CustomSnackbar.customSnackbar(data);
				if (data.contains("error")) {
					break;
				}
			}
//    while (true) {
//      await Future.delayed(100.milliseconds);
//      final tdData = tg.receiveData();
//      final jsonTdData = json.decode(tdData);
//      final tdEvent = jsonTdData["@type"];
//      if (tdEvent == "updateAuthorizationState") {
//        final authState = jsonTdData["authorization_state"];
//        if (authState == "authorizationStateWaitTdlibParameters") {
//          final tdParam = SetTdlibParameters(
//            useTestDc: true,
//            databaseDirectory: TFileConfig.tdDatabasePath,
//            filesDirectory: TFileConfig.tdFilesPath,
//            databaseEncryptionKey: base64.encode(utf8.encode("Adalat")),
//            useFileDatabase: true,
//            useChatInfoDatabase: true,
//            useMessageDatabase: true,
//            useSecretChats: true,
//            apiId: 12860793,
//            apiHash: "668c3c09dc67819c912c918db5648cf1",
//            systemLanguageCode: "en-IN",
//            deviceModel: "Pixel 6a",
//            systemVersion: "Android 13",
//            applicationVersion: "v1",
//            enableStorageOptimizer: true,
//            ignoreFileNames: false,
//          );
//          tg.sendData(tdParam.toJson());
//        } else if (authState == "authorizationStateWaitPhoneNumber") {
//          Get.off(const LoginView());
//        } else if (authState == "authorizationStateWaitEmailAddress") {
//          Get.off(const EmailAuthView());
//        } else if (authState == "authorizationStateWaitRegistration") {
//          Get.off(const NewUserView());
//        } else if (authState == "authorizationStateWaitCode" ||
//            authState == "authorizationStateWaitEmailCode" ||
//            authState == "authorizationStateWaitPassword") {
//          Get.off(const OtpView());
//        } else if (tdEvent["@error"]) {
//          CustomSnackbar.customSnackbar(tdEvent.toString());
//        }
//      }
//    }
    } catch (e) {
      CustomSnackbar.customSnackbar(e.toString());
    }
  }
}
