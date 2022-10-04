import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> animation;
  RxString count = "".obs;
  late AnimationController animationController;

	void recieve(){
		ReceivePort port = ReceivePort();
		final isolate = Isolate.spawn(runTimer, port.sendPort);
		port.listen(((message){
			count.value = message.toString();
		}));
	}

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

  void runTimer(SendPort sendPort) {
    int count = 0;
    Timer.periodic(const Duration(seconds: 1), (Timer t) {
      count++;
      String msg = 'notification $count';
      sendPort.send(msg);
    });
  }
}
