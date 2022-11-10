import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
  }
}
