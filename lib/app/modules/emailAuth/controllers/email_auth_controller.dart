import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class EmailAuthController extends GetxController {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  String errorText = "";

  void validate(String text) {
    if (!text.isEmail) {
      errorText = "Please Enter correct Email";
      update();
    } else {
      errorText = "";
      update();
    }
  }
}
