import 'package:tfile/app/views/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  TextEditingController editingController = TextEditingController();

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

  void importFromUrl() {
    editingController.clear();
    Get.dialog(
      AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text("Enter url"),
          content: TextField(
            controller: editingController,
            decoration: InputDecoration(
              hintText: "Enter Telegram file url",
              label: const Text("Telegram file url"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Get.theme.primaryColor),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: (() {
                Get.back();
              }),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: (() {
                Get.back();
                if (editingController.text.isEmpty) {
                  CustomSnackbar.customSnackbar("Please enter the url");
                } else {
                  if (Uri.parse(editingController.text).isAbsolute) {
                    if (editingController.text
                            .startsWith("https://telegram.me") ||
                        editingController.text.startsWith("https://t.me")) {
                      // do main link task
                    } else {
                      CustomSnackbar.customSnackbar(
                          "Only Telegram url are accepted");
                    }
                  } else {
                    CustomSnackbar.customSnackbar("Only URL are accepted");
                  }
                }
              }),
              child: const Text("Search"),
            ),
          ]),
    );
  }

  @override
  dispose() {
    super.dispose();
    editingController.dispose();
  }
}
