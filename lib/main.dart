import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Test App",
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      ScrollController scrollController = ScrollController();
      return WillPopScope(
        onWillPop: (() async {
          if (controller.currnetPath == "/storage/emulated/0") {
            SystemNavigator.pop(animated: true);
            return true;
          } else {
            final aaa = Directory(controller.currnetPath);
            controller.getFiles(aaa.parent.path);
            controller.update();
            return false;
          }
        }),
        child: Scaffold(
          body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              slivers: [
                SliverAppBar.large(
                    leading: IconButton(
                        onPressed: (() {
                          if (controller.currnetPath == "/storage/emulated/0") {
                            SystemNavigator.pop(animated: true);
                            SystemSound.play(SystemSoundType.click);
                          } else {
                            final aaa = Directory(controller.currnetPath);
                            controller.getFiles(aaa.parent.path);
                            controller.update();
                          }
                        }),
                        icon: const Icon(Icons.arrow_back)),
                    title: const Text("Simple File Manager"),
                    actions: [
                      IconButton(
                        onPressed: (() async {
                          final storageStaus = await Permission.storage.status;
                          final managePermission =
                              await Permission.manageExternalStorage.status;
                          if (storageStaus.isDenied ||
                              managePermission.isDenied) {
                            await Permission.storage.request();
                            await Permission.manageExternalStorage.request();
                          } else {
                            final list1 =
                                Directory("/storage/emulated/0").listSync();
                            controller.allFiles = list1;
                            controller.update();
                            Get.snackbar("Path",
                                "${await getExternalStorageDirectories()}");
                            Get.snackbar("Path2",
                                "${await getExternalStorageDirectories(type: StorageDirectory.dcim)}");
                          }
                        }),
                        icon: const Icon(Icons.more_vert),
                      ),
                    ]),
                SliverList(
                  delegate: SliverChildListDelegate([
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text(controller.allFiles[index].path
                              .replaceAll("${controller.currnetPath}/", "")),
                          leading: controller.allFiles[index] is Directory
                              ? const Icon(Icons.folder_outlined)
                              : controller.allFiles[index].path.isAPKFileName
                                  ? const Icon(Icons.android_rounded)
                                  : const Icon(Icons.file_copy),
                          onTap: (() {
                            if (controller.allFiles[index] is Directory) {
                              controller
                                  .getFiles(controller.allFiles[index].path);
                              scrollController.jumpTo(0);
                              controller.update();
                            } else {
                              Get.snackbar("Info", "This is a File");
                            }
                          }),
                        );
                      }),
                      itemCount: controller.allFiles.length,
                      separatorBuilder: ((context, index) {
                        return const CustomDivider();
                      }),
                    ),
                  ]),
                )
              ]),
        ),
      );
    });
  }
}

class HomeController extends GetxController {
  List<FileSystemEntity> allFiles = [];
  List<String> fileTime = [];
  String currnetPath = "";
  getFiles(String path) {
    currnetPath = path;
    final dir = Directory(path);
    try {
      final listDirs = dir.listSync();
      allFiles = listDirs;
    } catch (e) {
      currnetPath = dir.parent.path;
      update();
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  onInit() {
    getFiles("/storage/emulated/0");
    super.onInit();
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 1,
            color: Theme.of(context).dividerColor,
            width: size.width - 70,
          ),
        ),
      ],
    );
  }
}
