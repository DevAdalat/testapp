import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/permission_controller_controller.dart';

class PermissionControllerView extends GetView<PermissionControllerController> {
  const PermissionControllerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PermissionControllerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PermissionControllerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
