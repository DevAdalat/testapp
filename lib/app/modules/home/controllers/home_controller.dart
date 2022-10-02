import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: 200.milliseconds,
    );
    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: animationController);
    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.onInit();
  }
}
