import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram_client/telegram_client.dart';
import 'package:testapp/tdlib_bindings.dart';

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
//                  controller.rustGreet(controller.valOne.text);
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
        onPressed: ((() async {
          try {
            NativeLibrary td =
                NativeLibrary(DynamicLibrary.open("libtdjson.so"));
            int client = td.td_create_client_id();
            Get.snackbar("Client id", client.toString());
            controller.startReceiver(td);
          } catch (e) {
            Get.snackbar("Error", e.toString());
          }
        })),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
