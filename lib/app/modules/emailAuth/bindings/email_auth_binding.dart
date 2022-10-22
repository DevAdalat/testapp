import 'package:get/get.dart';

import '../controllers/email_auth_controller.dart';

class EmailAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailAuthController>(
      () => EmailAuthController(),
    );
  }
}
