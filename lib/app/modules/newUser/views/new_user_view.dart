import 'package:tfile/app/modules/newUser/controllers/new_user_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class NewUserView extends StatelessWidget {
  const NewUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewUserController>(
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
                            SizedBox(
                                height: Get.height * 0.6,
                                child: Lottie.asset(
                                    "assets/lottie/new_user.json")),
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "First Name",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Get.theme.primaryColor),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Last Name",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Get.theme.primaryColor),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
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
                                    successColor: Colors.green,
                                    controller: controller.buttonController,
                                    onPressed: (() async {
                                      await Future.delayed(1.seconds);
                                      controller.buttonController.success();
                                    }),
                                    child: const Text(
                                      "Sign Up",
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
