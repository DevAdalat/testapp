import 'package:tfile/app/tdLibJson/tdlibjson_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';

class LoginController extends GetxController {
  String finalPhoneNumber = "";
  RxInt maxLength = 10.obs;
  RxBool isFabEnable = false.obs;
  TextEditingController numberController = TextEditingController();
  late PhoneNumber phoneNumber;
  setupPhoneNumberData(PhoneNumber number) {
    phoneNumber = number;
    finalPhoneNumber = number.completeNumber;
    if (numberController.text.length.isEqual(maxLength.value)) {
      isFabEnable.value = true;
    } else {
      isFabEnable.value = false;
    }
  }

  void sendData() {
    final phoneNumberData =
        SetAuthenticationPhoneNumber(phoneNumber: phoneNumber.completeNumber);
    Get.back(result: phoneNumberData);
  }

  @override
  dispose() {
    numberController.dispose();
    super.dispose();
  }
}
