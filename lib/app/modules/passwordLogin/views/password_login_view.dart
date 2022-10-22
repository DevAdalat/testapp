import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../controllers/password_login_controller.dart';

class PasswordLoginView extends StatelessWidget {
  const PasswordLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PasswordLoginController>(
      builder: ((controller) => Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: Get.height,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Lottie.asset("assets/lottie/telegram_mail.json"),
                            const Text(
                              "Enter your Telegram password.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: controller.obsecureText,
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Get.theme.primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    errorText: controller.errorText.isEmpty
                                        ? null
                                        : controller.errorText,
                                    suffix: IconButton(
                                      onPressed: (() =>
                                          controller.changeObsecureText),
                                      icon: Icon(
                                        controller.obsecureText
                                            ? Icons.visibility_rounded
                                            : Icons.visibility_off_rounded,
                                      ),
                                    )),
                                onChanged: controller.validate,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundedLoadingButton(
                                height: 60,
                                width: 150,
                                borderRadius: 15,
                                color: Get.theme.primaryColor,
                                controller: controller.buttonController,
                                onPressed: (() async {
                                  await Future.delayed(3.seconds);
                                  controller.buttonController.success();
                                }),
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
