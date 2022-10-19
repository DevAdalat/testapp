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
        body: Column(children: [
          Expanded(
            child: Wrap(children: [
              TextButton(
                onPressed: (() => controller.requestPermission()),
                child: const Text("Request Permission"),
              ),
              TextButton(
                onPressed: (() => controller.startReceiver()),
                child: const Text("Send auth state data"),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
              itemBuilder: ((_, index) => Text(
                    controller.logs[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )),
              itemCount: controller.logs.length,
              separatorBuilder: ((context, index) => const Divider()),
            ),
          ),
        ]),
      );
    });
  }
}
