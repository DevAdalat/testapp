import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Center(
        child: SizedBox(
          height: Get.height * 0.4,
          child: Column(children: [
            TextField(
              controller: controller.valOne,
              decoration: const InputDecoration(
                hintText: "Enter path",
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: ((() {
                  controller.rustGreet(controller.valOne.text);
                })),
                child: const Text("Add"),
              ),
            ),
            Center(
              child: Obx((() => Text(controller.greet.value))),
            ),
            Obx((() => Text("Image Size: ${controller.imageSize.value} B"))),
            Obx((() => Text("Videos Size: ${controller.videosSize.value} B"))),
            Obx((() => Text("Audios Size: ${controller.audiosSize.value} B"))),
            Obx((() => Text("Docs Size: ${controller.docsSize.value} B"))),
            Obx((() => Text("APKs Size: ${controller.apkSize.value} B"))),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ((() async {
          Get.snackbar("Info", "Started");
          controller.greet.value = "Loading";
          controller.getAllSizeImage(controller.valOne.text);
        })),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
