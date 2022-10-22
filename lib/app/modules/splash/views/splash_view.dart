import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Unlimited Cloud Stoarge",
            body: "TFile Gives You Unlimited Cloud Storage Using Telegram",
            image: Center(
              child: Lottie.asset(
                "assets/lottie/cloud_upload.json",
                height: 175,
                animate: true,
                fit: BoxFit.cover,
              ),
            ),
          ),
          PageViewModel(
            title: "Extra Layer Encryption",
            body: "File will be encrypted before it is uploaded",
            image: Center(
              child: Lottie.asset("assets/lottie/secure.json"),
            ),
          ),
          PageViewModel(
            title: "Open Source",
            body:
                "TFile will be always open source, and source code available on GitHub.",
            image: Center(
              child: Lottie.asset("assets/lottie/github_logo.json"),
            ),
          ),
        ],
        done: const Text("Login"),
        onDone: (() => controller.getAuthState()),
        next: const Text("Next"),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ), // RoundedRectangleBorder
        ),
      ),
    );
  }
}
