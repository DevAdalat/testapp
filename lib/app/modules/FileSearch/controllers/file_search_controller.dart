import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FileSearchController extends GetxController {
  TextEditingController searchTextController = TextEditingController();

  @override
  dispose() {
    searchTextController.dispose();
    super.dispose();
  }
}
