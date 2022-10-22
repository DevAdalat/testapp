import 'dart:ffi' show DynamicLibrary;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart'
    show DotsDecorator, IntroductionScreen, PageViewModel;
import 'package:lottie/lottie.dart' show Lottie;
import 'package:tfile/app/tdLibJson/tdlib_interface.dart';
import 'package:tfile/app/views/widgets/custom_snackbar.dart'
    show CustomSnackbar;
import 'package:tfile/generated_bindings.dart' show NativeLibrary;

import '../controllers/splash_controller.dart' show SplashController;

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
        onDone: (() {
          try {
            CustomSnackbar.customSnackbar("Started");
            NativeLibrary lib =
                NativeLibrary(DynamicLibrary.open("libtdjson.so"));
            final client = lib.td_json_client_create();
            Adalat aaa = Adalat(client: client.address);
            aaa.tdReceive().listen(((message) {
              CustomSnackbar.customSnackbar(message.toString());
            }));
          } catch (e) {
            CustomSnackbar.customSnackbar(e.toString());
          }
        }),
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
