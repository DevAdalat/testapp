import 'package:e_file/app/modules/FileTree/views/file_tree_view.dart';
import 'package:e_file/app/modules/Notes/views/notes_view.dart';
import 'package:e_file/app/modules/Settings/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_drawer_controller.dart';

class HomeDrawerView extends GetView<HomeDrawerController> {
  const HomeDrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      child: ListView(children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "EFile",
                style: Get.textTheme.headlineSmall!
                    .apply(color: Get.theme.primaryColor, fontWeightDelta: 3),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Encrypted and secure",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Spacer()
            ],
          ),
        ),
        Column(
          children: List.generate(
            controller.drawerItems.length,
            (index) => ListTile(
              selected: controller.drawerItemsIndex == index,
              selectedTileColor: Get.theme.primaryColor.withAlpha(40),
              shape: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              title: Text(
                controller.drawerItems[index],
                style: TextStyle(
                  fontWeight: controller.drawerItemsIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              leading: FaIcon(
                controller.drawerItemsIcons[index],
                size: 20,
              ),
              onTap: (() {
                switch (index) {
                  case 0:
                    Get.back();
                    break;
                  case 1:
                    Get.back();
                    Get.to(const NotesView());
                    break;
                  case 2:
                    Get.back();
                    Get.to(const FileTreeView());
                    break;
                  case 3:
                    Get.back();
                    break;
                  case 4:
                    Get.back();
                    Get.to(const SettingsView());
                    break;
                }
              }),
            ),
          ),
        )
      ]),
    );
  }
}
