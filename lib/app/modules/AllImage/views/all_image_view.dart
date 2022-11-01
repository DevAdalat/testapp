import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_image_controller.dart';

class AllImageView extends GetView<AllImageController> {
  const AllImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllImageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
