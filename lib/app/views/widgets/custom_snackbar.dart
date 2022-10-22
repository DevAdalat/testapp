import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static SnackbarController customSnackbar(String message) {
    return Get.rawSnackbar(
      message: message,
      animationDuration: 1.seconds,
      backgroundColor: Colors.black,
      dismissDirection: DismissDirection.startToEnd,
      duration: 3.seconds,
      margin: const EdgeInsets.all(10),
      borderRadius: 10,
      snackStyle: SnackStyle.FLOATING,
    );
  }
}
