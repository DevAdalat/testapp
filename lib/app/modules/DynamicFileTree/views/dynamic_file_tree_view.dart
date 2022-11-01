import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_file_tree_controller.dart';

class DynamicFileTreeView extends GetView<DynamicFileTreeController> {
  const DynamicFileTreeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DynamicFileTreeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DynamicFileTreeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
