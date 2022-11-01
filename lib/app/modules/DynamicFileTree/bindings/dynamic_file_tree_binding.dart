import 'package:get/get.dart';

import '../controllers/dynamic_file_tree_controller.dart';

class DynamicFileTreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DynamicFileTreeController>(
      () => DynamicFileTreeController(),
    );
  }
}
