import 'package:flutter/material.dart';
import 'package:get/get.dart';

customSnackbar(Object message) {
  Get.rawSnackbar(
    message: message.toString(),
    backgroundColor: Colors.black,
    barBlur: 0,
    borderRadius: 10,
    snackPosition: SnackPosition.BOTTOM,
    snackStyle: SnackStyle.FLOATING,
    margin: const EdgeInsets.all(5),
    duration: 2.seconds,
    dismissDirection: DismissDirection.startToEnd,
  );
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 1,
            color: Theme.of(context).dividerColor,
            width: Get.size.width - 70,
          ),
        ),
      ],
    );
  }
}
