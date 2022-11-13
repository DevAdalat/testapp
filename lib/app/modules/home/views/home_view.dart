import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (((controller) => Scaffold(
            appBar: AppBar(
              title: const Text("Lazy loading example"),
            ),
            body: ListView.builder(
              controller: controller.scrollController,
              itemBuilder: (((context, index) {
                if (index > controller.pairedItems.length - 1) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListTile(
                    title: Text(controller.pairedItems[index]),
                  );
                }
              })),
              itemCount: controller.pairedItems.length + 1,
            ),
          ))),
    );
  }
}
