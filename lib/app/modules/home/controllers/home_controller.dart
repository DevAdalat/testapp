import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
	final  scrollController = ScrollController();

	void scrollListener(){
		if (scrollController.position.axisDirection == AxisDirection.up) {
			Get.snackbar("Info", "Up");
		} else if (scrollController.position.axisDirection == AxisDirection.down) {
			Get.snackbar("Info", "Down");
		}
	}
	@override
  onInit(){
    super.onInit();
		scrollController.addListener(scrollListener);
  }

	@override
  dispose(){
    super.dispose();
		scrollController.dispose();
  }

}
