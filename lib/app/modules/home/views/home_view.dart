import 'package:tfile/app/views/widgets/custom_snackbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            scrolledUnderElevation: 10,
            elevation: 0,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Container(
                color: Get.theme.primaryColor.withAlpha(60),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
							TextButton(onPressed: controller.greet(),
								child: const Text("Greet"),
								),
							TextButton(
								onPressed: controller.list(),
								child: const Text("Get list"),
								),
							
//            GridView(
//              shrinkWrap: true,
//              physics: const NeverScrollableScrollPhysics(),
//              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 2),
//              children: List.generate(
//                10,
//                ((index) => Card(
//                      child: GridTile(
//                          footer: Row(children: [
//                            const Spacer(),
//                            const Icon(Icons.picture_as_pdf),
//                            const SizedBox(width: 10),
//                            Text(
//                              "Folder $index",
//                              style: const TextStyle(
//                                  fontSize: 15, fontWeight: FontWeight.w300),
//                            ),
//                            const Spacer(),
//                            IconButton(
//                                onPressed: (() {}),
//                                icon: const Icon(Icons.more_vert)),
//                          ]),
//                          child: const Icon(Icons.folder_rounded, size: 100)),
//                    )),
//              ),
//            )
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Upload File",
            iconColor: Colors.white,
            bubbleColor: Get.theme.primaryColor,
            icon: Icons.cloud_upload_rounded,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () async {
              controller.animationController.reverse();
              FilePickerResult? picker = await FilePicker.platform.pickFiles(
                allowMultiple: true,
              );
              if (picker != null) {
                if (kIsWeb) {
                  CustomSnackbar.customSnackbar(picker.names.toString());
                } else {
                  CustomSnackbar.customSnackbar(picker.paths.toString());
                }
              } else {
                CustomSnackbar.customSnackbar("Aborted file picker");
              }
            },
          ),
          // Floating action menu item
          Bubble(
            title: "Import from Url",
            iconColor: Colors.white,
            bubbleColor: Get.theme.primaryColor,
            icon: Icons.import_export_rounded,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              controller.animationController.reverse();
              controller.importFromUrl();
            },
          ),
        ],
        iconData: Icons.add_rounded,
        animation: controller.animation,
        backGroundColor: Get.theme.primaryColor,
        onPress: () {
          controller.animationController.isCompleted
              ? controller.animationController.reverse()
              : controller.animationController.forward();
        },
        iconColor: Colors.white,
      ),
    );
  }
}
