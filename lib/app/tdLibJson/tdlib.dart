import 'dart:convert';

import 'package:get/get.dart';
import 'package:tfile/app/config/config.dart';
import 'package:tfile/app/routes/app_pages.dart';
import 'package:tfile/app/tdLibJson/tdlib_core.dart';
import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';

class TDLib {

	static startTDReceiver() async {
		while (true) {
			await 10.milliseconds.delay();
			final tdData = TDLibCore.receiveData();
			final decodedTdData = json.decode(tdData);
        if (decodedTdData["@type"] == "updateAuthorizationState") {
          final authState = decodedTdData["authorization_state"];
          if (authState["@type"] == "authorizationStateWaitTdlibParameters") {
            final tdlibParam = SetTdlibParameters(
              useTestDc: true,
              useSecretChats: true,
              useFileDatabase: true,
              useMessageDatabase: true,
              useChatInfoDatabase: true,
              ignoreFileNames: true,
              enableStorageOptimizer: true,
              deviceModel: "MI 10I",
              databaseDirectory: Config.tdDatabasePath,
              filesDirectory: Config.tdDatabasePath,
              databaseEncryptionKey: base64.encode(utf8.encode("Adalat")),
              systemVersion: "",
              systemLanguageCode: "en-IN",
              apiId: 12860793,
              apiHash: "668c3c09dc67819c912c918db5648cf1",
              applicationVersion: "TFile v0.0.1",
            );
						TDLibCore.sendData(tdlibParam.toJson());
          } else if (authState["@type"] ==
              "authorizationStateWaitPhoneNumber") {
            SetAuthenticationPhoneNumber phoneNumber =
                await Get.toNamed(Routes.LOGIN);
						TDLibCore.sendData(phoneNumber.toJson());
          } else if (authState["@type"] == "checkAuthenticationCode") {
            Get.toNamed(Routes.OTP);
          }
        }
		}
	}
}
