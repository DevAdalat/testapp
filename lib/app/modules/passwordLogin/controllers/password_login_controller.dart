import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class PasswordLoginController extends GetxController {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  String errorText = "";
  bool obsecureText = true;

  void validate(String text) {
    if (text.isEmpty) {
      errorText = "Password Not be empty";
      update();
    } else {
      errorText = "";
      update();
    }
  }

  void changeObsecureText() {
    obsecureText = !obsecureText;
    update();
  }
}
