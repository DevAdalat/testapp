import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_file_tree_controller.dart';

class DynamicFileTreeView extends GetView<DynamicFileTreeController> {
  const DynamicFileTreeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DynamicFileTreeController>(
        builder: (((controller) =>
            Scaffold(body: ListView.builder(itemBuilder: (((context, index) {
              if (index > controller.pairedItem.length - 1) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListTile(title: Text(controller.pairedItem[index]));
              }
            })),),))),);
  }
}
