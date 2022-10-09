import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: ((controller) => Scaffold(
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
                      })),
                      child: const Text("Add"),
                    ),
                  ),
                  Center(
                    child: Obx((() => Text("${controller.sum.value}"))),
                  ),
                ]),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: ((() async {})),
              child: const Icon(Icons.add_rounded),
            ),
          )),
    );
  }
}
