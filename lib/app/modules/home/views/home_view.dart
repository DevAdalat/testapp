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
              centerTitle: true,
            ),
            body: RefreshIndicator(
							onRefresh: ((() async {
								Get.snackbar("Info", "Triggred");
							})),
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text("Value = $index"),
                  );
                }),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: ((() async {
             })),
              child: const Icon(Icons.add_rounded),
            ),
          )),
    );
  }
}
