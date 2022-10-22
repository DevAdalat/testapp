import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          SizedBox(
            height: Get.height * 0.18,
            child: const Center(
              child: FlutterLogo(size: 100),
            ),
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: Column(children: const [
              Text(
                "Your Phone Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please select your country code and enter your phone number",
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          const SizedBox(height: 15),
          IntlPhoneField(
            autofocus: true,
            keyboardAppearance: Brightness.light,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            controller: controller.numberController,
            initialCountryCode: "IN",
            onCountryChanged: ((value) =>
                controller.maxLength.value = value.maxLength),
            onChanged: (((value) {
              if (value.number.length == controller.maxLength.value) {
                controller.isFabEnable.value = true;
              } else {
                controller.isFabEnable.value = false;
              }
            })),
          ),
          const Spacer(),
        ],
      ),
      floatingActionButton: Obx(
        (() => Visibility(
              visible: controller.isFabEnable.value,
              child: FloatingActionButton(
                  onPressed: ((() async {
                    try {
                      Get.back();
                    } catch (e) {
                      Get.snackbar("Error", e.toString());
                    }
                  })),
                  child: const Icon(Icons.arrow_right_alt_rounded)),
            )),
      ),
    );
  }
}
