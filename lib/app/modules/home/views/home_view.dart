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
                title: const Text('HomeView'),
              ),
              body: ListView.builder(itemBuilder: (((context, index) {
                return ListTile(
                  title: Text(controller.names[index]),
                );
              }))),
              floatingActionButton: FloatingActionButton(
                onPressed: ((() async {
									controller.getData();
								})),
                child: const Icon(Icons.add_rounded),
              ),
            ))));
  }
}
