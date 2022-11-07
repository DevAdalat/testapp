import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_file_tree_controller.dart';

class DynamicFileTreeView extends GetView<DynamicFileTreeController> {
  const DynamicFileTreeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DynamicFileTreeController>(
      builder: (((controller) => Scaffold(
            body: ListView.builder(
							controller: controller.scontroller,
              itemBuilder: (((context, index) {
                if (index > controller.pairedItem.length) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListTile(title: Text(controller.pairedItem[index]));
                }
              })),
							itemCount: controller.pairedItem.length +1
            ),
          ))),
    );
  }
}
