import 'package:auto_size_text/auto_size_text.dart';
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
      body: Column(children: [
        SizedBox(
          height: Get.height * 0.13,
          child: Obx(
            (() => AutoSizeText(
                  controller.data.value,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )),
          ),
        ),
        TextField(
            decoration: const InputDecoration(hintText: "Hello"),
            onChanged: controller.changeData),
      ]),
    );
  }
}
