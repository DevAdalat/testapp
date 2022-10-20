import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: const Text("Test App")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "getApplicationDocumentsDirectory: ${controller.agetApplicationDocumentsDirectory}"),
              Text(
                  "getTemporaryDirectory: ${controller.agetTemporaryDirectory}"),
              Text(
                  "getExternalStorageDirectories: ${controller.agetExternalStorageDirectories}"),
              Text(
                  "getExternalStorageDirectory: ${controller.agetExternalStorageDirectory}"),
              Text(
                  "getExternalCacheDirectories: ${controller.agetExternalCacheDirectories}"),
              Text(
                  "getApplicationSupportDirectory: ${controller.agetApplicationSupportDirectory}"),
              Center(
                child: TextButton(
                  onPressed: ((() => controller.agetDirs())),
                  child: const Text("Get dirs"),
                ),
              ),
            ]),
      );
    });
  }
}
