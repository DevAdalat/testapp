import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/downloader_controller.dart';

class DownloaderView extends GetView<DownloaderController> {
  const DownloaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DownloaderView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DownloaderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
