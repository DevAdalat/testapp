import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_client/telegram_client.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: (() async {
        try {
          const path = "/storage/emulated/0";
          Tdlib tg = Tdlib("libtdjson.so", clientOption: {
            'api_id': 12860793,
            'api_hash': '668c3c09dc67819c912c918db5648cf1',
            'database_directory': "$path/user/",
            'files_directory': "$path/user/",
          });
          final me = await tg.getMe(clientId: 1570907697);
          Get.snackbar("Me", me.toString());
          await tg.initIsolate();
        } catch (e) {
          Get.snackbar("Error", e.toString());
        }
      }),
      child: const Text("Get Data"),
    )));
  }
}
