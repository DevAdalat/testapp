import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

typedef SumFunc = Int32 Function(Int32 a, Int32 b);
typedef Sum = int Function(int a, int b);

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
              onPressed: (() {
                try {
                  DynamicLibrary library = DynamicLibrary.open("libtest.so");
                  final addPoiner =
                      library.lookup<NativeFunction<SumFunc>>("add");
                  final add = addPoiner.asFunction<Sum>();
                  Get.snackbar("Add",
                      "Sum of 1776771346 + 4568898726 = ${add(1776771346, 4568898726)}");
                } catch (e) {
                  Get.snackbar("Error", e.toString());
                }
              }),
              child: const Text("Add"))),
    );
  }
}
