import 'dart:async';

import 'package:get/get.dart';
import 'dart:isolate';

class HomeController extends GetxController {
  List<String> names = [];
  List<int> age = [];
  List<String> addess = [];
  ReceivePort receivePort = ReceivePort();

  void runTimer(SendPort port) {
    int count = 0;
    Timer.periodic(2.seconds, ((timer) {
      count++;
      port.send("Sending from isolate thread $count");
    }));
  }

  void isolate() async {
    try {
      await Isolate.spawn(runTimer, receivePort.sendPort);
    } catch (e) {
      Get.snackbar("Error: ", e.toString());
    }
  }

  void receive() {
    try {
      receivePort.listen(((message) {
        names.add(message.toString());
        update();
      }));
    } catch (e) {
      Get.snackbar("Receiver Error", e.toString());
    }
  }

  @override
  onInit() {
    super.onInit();
    isolate();
    receive();
  }
}
