import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/file_search_controller.dart';

class FileSearchView extends StatelessWidget {
  const FileSearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FileSearchController>(builder: ((controller) {
      return Scaffold(
        body: SafeArea(
          child: ListView(children: [
            Container(
              height: Get.height * 0.09,
              color: Get.theme.primaryColor.withAlpha(60),
              child: Row(
                children: [
                  IconButton(
                      onPressed: (() {
                        Get.back();
                      }),
                      icon: const Icon(Icons.arrow_back)),
                  Expanded(
                    child: TextField(
                      controller: controller.searchTextController,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Search your files...",
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: (() {
                              controller.searchTextController.clear();
                            }),
                            icon: const Icon(Icons.close_rounded)),
                        suffixIconColor: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
//    body: SafeArea(
//      child: Column(
//        children: [
//          Container(
//						height: Get.height * 0.09,
//            decoration: BoxDecoration(
//              color: Get.theme.primaryColor.withAlpha(50),
//            ),
//            child: Row(
//              children: [
//                IconButton(
//									onPressed: (() {
//										try {
//										Get.back();
//										} catch(e, st) {
//											Get.snackbar("Error", e.toString());
//										}
//									}),
//                  icon: const FaIcon(FontAwesomeIcons.arrowLeft),
//                ),
//                Expanded(
//                  child: Container(
//                    height: 50,
//                  ),
//                ),
//              ],
//            ),
//          ),
//          ListView(),
//        ],
//      ),
//    ),
      );
    }));
  }
}
