import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
		Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (() async {
                try {
                  controller.recieve();
                } catch (e) {
                  Get.snackbar("Error", e.toString());
                }
              }),
              child: const Text("Get Data"),
            ),
          ),
          Obx((() => Text(controller.count.value))),
        ],
      ),
    );
  }
}
