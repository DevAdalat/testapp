import 'package:tfile/app/modules/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
        builder: ((controller) => Scaffold(
              body: SafeArea(
                  child: SingleChildScrollView(
                child: SizedBox(
                  height: Get.height,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Lottie.asset("assets/lottie/telegram_sms.json"),
                            const Text(
                              "Enter your OTP here",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: OTPTextField(
                                controller: controller.otpController,
                                fieldStyle: FieldStyle.box,
                                length: 5,
                                fieldWidth: 50,
                                otpFieldStyle: OtpFieldStyle(
                                  borderColor: Get.theme.primaryColor,
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                width: double.infinity,
                                onCompleted: ((value) {}),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 20, 10),
                                  child: RoundedLoadingButton(
                                    borderRadius: 15,
                                    width: 150,
                                    height: 60,
                                    color: Get.theme.primaryColor,
                                    controller: controller.buttonController,
                                    onPressed: (() async {
                                      await Future.delayed(1.seconds);
                                      controller.buttonController.success();
                                    }),
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      )
                    ],
                  ),
                ),
              )),
            )));
  }
}
