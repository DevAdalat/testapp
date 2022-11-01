import 'package:get/get.dart';

import '../controllers/all_image_controller.dart';

class AllImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllImageController>(
      () => AllImageController(),
    );
  }
}
