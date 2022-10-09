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
              keyboardType: TextInputType.number,
              controller: controller.valOne,
              decoration: const InputDecoration(
                hintText: "First number",
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
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ((() async {})),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
