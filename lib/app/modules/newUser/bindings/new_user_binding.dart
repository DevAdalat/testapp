import 'package:get/get.dart';

import '../controllers/new_user_controller.dart';

class NewUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewUserController>(
      () => NewUserController(),
    );
  }
}
