import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final data = "".obs;

  void changeData(String text) {
    data.value = text;
  }

  void increment() => count.value++;
}
