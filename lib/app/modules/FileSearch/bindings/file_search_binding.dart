import 'package:get/get.dart';

import '../controllers/file_search_controller.dart';

class FileSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FileSearchController>(
      () => FileSearchController(),
    );
  }
}
