import 'package:get/get.dart';

import '../controllers/downloader_controller.dart';

class DownloaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DownloaderController>(
      () => DownloaderController(),
    );
  }
}
