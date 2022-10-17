import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ffi/ffi.dart';
import 'package:telegram_client/tdlib/tdlib.dart';

class HomeController extends GetxController {
  startService() async {
    Tdlib tg = Tdlib("libtdjson.so", clientOption: {
      "api_id": 12860793,
      "api_hash": "668c3c09dc67819c912c918db5648cf1",
      'database_directory': "",
      'files_directory': "",
      "use_file_database": true,
      "use_chat_info_database": true,
      "use_message_database": true,
      "use_secret_chats": true,
      'enable_storage_optimizer': true,
      'system_language_code': 'en',
      'new_verbosity_level': 0,
      'application_version': 'v1',
      'device_model': 'Telegram Client HexaMinate',
      'system_version': Platform.operatingSystemVersion,
      "database_key": "",
      "start": true,
    });
	 final clients =	await tg.getMeClients();
	 Get.snackbar("Info", clients.toString());
  }
}
