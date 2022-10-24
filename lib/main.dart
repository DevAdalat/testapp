import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfile/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Test App",
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
    );
  }
}

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
		Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testapp"),
      ),
      body: Column(children: [
        TextButton(
          onPressed: ((() => controller.getList())),
          child: const Text("List"),
        ),
        TextButton(
          onPressed: ((() => controller.greet())),
          child: const Text("Greet"),
        ),
      ]),
    );
  }
}

class HomeController extends GetxController {
  greet() async {
    final lib = RtestImpl(DynamicLibrary.open("librtest.so"));
    final data = await lib.greet(name: "Adalat");
    Get.snackbar("Greet", data);
  }

  getList() async {
    final lib = RtestImpl(DynamicLibrary.open("librtest.so"));
    final data = await lib.listData();
    Get.snackbar("List", data.toString());
  }
}
