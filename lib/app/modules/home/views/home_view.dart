import 'dart:ffi';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:testapp/generated_bindings.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (((controller) {
      return Scaffold(
        appBar: AppBar(title: const Text("Test App")),
        body: Center(
            child: SizedBox(
          height: 150,
          child: Column(
            children: [
              TextButton(
                onPressed: (() async {
                  await Permission.manageExternalStorage.request();
                  await Permission.storage.request();
                }),
                child: const Text("Request"),
              ),
							TextField(
								controller: controller.valController,
								decoration: const InputDecoration(
									hintText: "Enter data",
									),
								),
              TextButton(
                  onPressed: ((() => controller.startService(controller.valController.text))),
                  child: const Text("Run")),
            ],
          ),
        )),
      );
    })));
  }
}
