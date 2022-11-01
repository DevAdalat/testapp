import 'package:get/get.dart';

import '../controllers/file_tree_controller.dart';

class FileTreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FileTreeController>(
      () => FileTreeController(),
    );
  }
}
