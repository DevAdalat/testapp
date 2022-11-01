import 'dart:io';

import 'package:e_file/app/widgets/custom_widgets.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/file_tree_controller.dart';

class FileTreeView extends GetView<FileTreeController> {
  const FileTreeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FileTreeController>(builder: (controller) {
      return WillPopScope(
        onWillPop: (() async {
          if (controller.animationController.status ==
              AnimationStatus.completed) {
            controller.animationController.reverse();
            return false;
          } else {
            if (controller.currnetPath == "/storage/emulated/0") {
              Get.back();
              return true;
            } else {
              final aaa = Directory(controller.currnetPath);
              controller.getFiles(aaa.parent.path);
              controller.update();
              return false;
            }
          }
        }),
        child: Scaffold(
          body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: controller.scrollController,
              slivers: [
                SliverAppBar.large(
                    leading: IconButton(
                        onPressed: (() {
                          if (controller.currnetPath == "/storage/emulated/0") {
                            Get.back();
                          } else {
                            final aaa = Directory(controller.currnetPath);
                            controller.getFiles(aaa.parent.path);
                            controller.update();
                          }
                        }),
                        icon: const Icon(Icons.arrow_back)),
                    title: const Text("Internal Stoarge"),
//                  title: DropdownButton2(
//                    items:
//                        controller.addDividersAfterItems(Storage.diskPaths),
//                    customItemsHeights: controller.getCustomItemsHeights(),
//                    value: controller.currentStorageName,
//                    isExpanded: true,
//                    hint: Text(
//                      controller.currentStorageName,
//                      style:
//                          Get.textTheme.headline3!.apply(color: Colors.black),
//                    ),
//                  ),
                    actions: [
                      PopupMenuButton(itemBuilder: ((context) {
                        return [];
                      }))
                    ]),
                SliverList(
                  delegate: SliverChildListDelegate([
                    controller.allFiles.isNotEmpty
                        ? ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: ((context, index) {
                              return ListTile(
                                title: Text(controller.allFiles[index].path
                                    .replaceAll(
                                        "${controller.currnetPath}/", "")),
                                leading: controller.allFiles[index] is Directory
                                    ? const FaIcon(FontAwesomeIcons.folder)
                                    : controller
                                            .allFiles[index].path.isAPKFileName
                                        ? const FaIcon(
                                            FontAwesomeIcons.android,
                                            color: Colors.green,
                                          )
                                        : const FaIcon(FontAwesomeIcons.file),
                                subtitle: Text(controller.fileSize[index]),
                                onTap: (() {
                                  if (controller.animationController.status ==
                                      AnimationStatus.completed) {
                                    controller.animationController.reverse();
                                  } else {
                                    if (controller.allFiles[index]
                                        is Directory) {
                                      controller.getFiles(
                                          controller.allFiles[index].path);
                                      controller.update();
                                    } else {
                                      Get.snackbar("Info", "This is a File");
                                    }
                                  }
                                }),
                              );
                            }),
                            itemCount: controller.allFiles.length,
                            separatorBuilder: ((context, index) {
                              return const CustomDivider();
                            }),
                          )
                        : SizedBox(
                            height: Get.height * 0.5,
                            child: const Center(
                              child: Text("Folder is empty"),
                            )),
                  ]),
                )
              ]),
          floatingActionButton: FloatingActionBubble(
            iconColor: Colors.white,
            animation: controller.animation,
            backGroundColor: Get.theme.primaryColor,
            iconData: Icons.create_rounded,
            items: [
              Bubble(
                bubbleColor: Get.theme.primaryColor,
                iconColor: Colors.white,
                icon: FontAwesomeIcons.folder,
                title: "Folder",
                titleStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onPress: (() {
                  Get.dialog(
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      titleTextStyle: Get.textTheme.titleLarge,
                      title: const Text("New Folder"),
                      content: TextField(
                        controller: controller.dialogTextController,
                        decoration: InputDecoration(
                          hintText: "Enter new folder name",
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Get.theme.primaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: (() {
                              Get.back();
                            }),
                            child: const Text("Cancel")),
                        TextButton(
                            onPressed: (() {
                              Get.back();
                              try {
                                Directory dir = Directory(
                                    "${controller.currnetPath}/${controller.dialogTextController.text}");
                                dir.createSync(recursive: true);
                                controller.getFiles(controller.currnetPath);
                                controller.update();
                                customSnackbar(
                                    "Directory created: ${controller.dialogTextController.text}]");
                              } catch (e) {
                                customSnackbar("Error: $e");
                              }
                            }),
                            child: const Text("Create")),
                      ],
                    ),
                  );
                }),
              ),
              Bubble(
                bubbleColor: Get.theme.primaryColor,
                iconColor: Colors.white,
                icon: FontAwesomeIcons.file,
                title: "File",
                titleStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onPress: (() {}),
              ),
              Bubble(
                bubbleColor: Get.theme.primaryColor,
                iconColor: Colors.white,
                icon: FontAwesomeIcons.boxArchive,
                title: "Archive",
                titleStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onPress: (() {}),
              )
            ],
            onPress: (() {
              if (controller.animationController.status ==
                  AnimationStatus.completed) {
                controller.animationController.reverse();
              } else {
                controller.animationController.forward();
              }
            }),
          ),
        ),
      );
    });
//  return Scaffold(
//    appBar: AppBar(
//      title: const Text('FileTreeView'),
//      centerTitle: true,
//    ),
//    body: Center(
//      child: Text(
//        'FileTreeView is working',
//        style: TextStyle(fontSize: 20),
//      ),
//    ),
//  );
  }
}
