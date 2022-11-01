import 'package:get/get.dart';

import '../controllers/permission_controller_controller.dart';

class PermissionControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PermissionControllerController>(
      () => PermissionControllerController(),
    );
  }
}
