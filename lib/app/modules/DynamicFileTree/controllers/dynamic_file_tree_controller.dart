import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class DynamicFileTreeController extends GetxController {
  List<String> files = [];
  List<String> pairedItem = [];
  final scontroller = ScrollController();

  void addDataToList() async {
		await Future.delayed(1.seconds);
    pairedItem
        .addAll(files.getRange(pairedItem.length, pairedItem.length + 15));
    update();
  }

  void scrolListener() {
    if (scontroller.position.userScrollDirection == ScrollDirection.reverse) {
      if (scontroller.position.pixels == scontroller.position.maxScrollExtent) {
        addDataToList();
      }
    }
  }

  @override
  onInit() {
    files.addAll(List.generate(10000, ((index) => "Index no: $index")));
    pairedItem.addAll(files.getRange(0, 15));
    scontroller.addListener(scrolListener);
    super.onInit();
  }
}
