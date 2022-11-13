import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> allCounts = [];
  List<String> pairedItems = [];
  final scrollController = ScrollController();

  void scrollListener() async {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (scrollController.position.pixels
          .isEqual(scrollController.position.maxScrollExtent)) {
        await Future.delayed(1.seconds);
        pairedItems.addAll(
            allCounts.getRange(pairedItems.length, pairedItems.length + 15));
        update();
      }
    }
  }

  @override
  onInit() {
    super.onInit();
    scrollController.addListener(scrollListener);
    allCounts = List.generate(10000, ((index) => "Index no $index"));
    pairedItems.addAll(allCounts.getRange(0, 15));
  }
}
