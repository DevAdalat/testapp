import 'dart:io';

import 'package:flutter/material.dart';
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
      title: "TestApp",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const FileTree(),
    );
  }
}

class FileTree extends StatelessWidget {
  const FileTree({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FileTreeController());
    return GetBuilder<FileTreeController>(
      builder: ((controller) {
        return Scaffold(
          body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar.medium(
                  title: const Text("Internal Storage"),
									actions: [
										IconButton(
											onPressed: (() async {
												final storage = await Permission.storage.status;
												final manageStoarage = await Permission.manageExternalStorage.status;
												if (storage.isDenied || manageStoarage.isDenied) {
												await	Permission.storage.request();
												await Permission.manageExternalStorage.request();
												} else {
													Get.snackbar("Info", "Permission is already granted");
												}
											}),
											icon: const Icon(Icons.settings_phone_rounded),
											)
									]
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.directores.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                            title: Text(controller.directores[index]),
                            onTap: (() {
                              if (FileSystemEntity.isDirectorySync(
                                  "${controller.currentPath}/${controller.directores[index]}")) {
                                controller.getDirs(Directory(
                                    "${controller.currentPath}/${controller.directores[index]}"));
                                controller.update();
                              } else {
                                Get.snackbar("Info", "This is a file");
                              }
                            }));
                      }),
                      separatorBuilder: ((context, index) {
                        return const Divider();
                      }),
                    )
                  ]),
                )
              ]),
        );
      }),
    );
  }
}

class FileTreeController extends GetxController {
  String currentPath = "";
  List<String> directores = <String>[];

  void getDirs(Directory path) {
		try {
	  currentPath = path.path;
    final directory = path.listSync();
    directores = directory.map(((e) => e.path)).toList();
    final pureDirs =
        directores.map(((e) => e.replaceAll("$currentPath/", ""))).toList();
    directores.clear();
    directores = pureDirs;
		} catch(e) {
			final parentPath = path.parent;
			currentPath = parentPath.path;
			update();
		}
 }

  Future<List<Directory>> getStorageList() async {
    List<Directory> paths = (await getExternalStorageDirectories())!;
    List<Directory> filteredPaths = <Directory>[];
    for (Directory dir in paths) {
      filteredPaths.add(removeDataDirectory(dir.path));
    }
    return filteredPaths;
  }

  Directory removeDataDirectory(String path) {
    return Directory(path.split('Android')[0]);
  }

  handleStorage() async {
    final path = await getStorageList();
    getDirs(path.first);
  }

  @override
  onInit() {
    handleStorage();
    super.onInit();
  }
}
