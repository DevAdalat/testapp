import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_videos_controller.dart';

class AllVideosView extends GetView<AllVideosController> {
  const AllVideosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllVideosView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllVideosView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
