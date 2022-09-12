import 'dart:io';
import 'dart:math';

import 'package:android_package_manager/android_package_manager.dart';
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
                                : controller.allFiles[index].path.isAPKFileName? const Icon(Icons.android_rounded) : const Icon(Icons.file_copy),
                            onTap: (() {
                              if (controller.allFiles[index] is Directory) {
                                controller
                                    .getFiles(controller.allFiles[index].path);
                                scrollController.jumpTo(0);
                                controller.update();
                              } else {
                                if (controller.allFiles[index].path.isAPKFileName) {
                                	controller.getApkIcon(controller.allFiles[index].path);
                                }
                              }
                            }),);
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
    try {
      final dir = Directory(path);
      final listDirs = dir.listSync();
      allFiles = listDirs;
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

	getApkIcon(String path) async {
		final pm = AndroidPackageManager();
		final info = await pm.getPackageArchiveInfo(archiveFilePath: path);
		final icon = info!.applicationInfo!.icon;
		Get.snackbar("Icon",icon.toString());
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

class FileUtils {
  /// Convert Byte to KB, MB, .......
  static String formatBytes(bytes, decimals) {
    if (bytes == 0) return '0.0 KB';
    var k = 1024,
        dm = decimals <= 0 ? 0 : decimals,
        sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
        i = (log(bytes) / log(k)).floor();
    return (((bytes / pow(k, i)).toStringAsFixed(dm)) + ' ' + sizes[i]);
  }

  /// Get mime information of a file
  /// Return all available Storage path
  static Future<List<Directory>> getStorageList() async {
    List<Directory> paths = [Directory("/storage/emulated/0")];
    List<Directory> filteredPaths = <Directory>[];
    for (Directory dir in paths) {
      filteredPaths.add(removeDataDirectory(dir.path));
    }
    return filteredPaths;
  }

  static Directory removeDataDirectory(String path) {
    return Directory(path.split('Android')[0]);
  }

  /// Get all Files and Directories in a Directory
  static Future<List<FileSystemEntity>> getFilesInPath(String path) async {
    Directory dir = Directory(path);
    return dir.listSync();
  }

  /// Get all Files on the Device
  static Future<List<FileSystemEntity>> getAllFiles(
      {bool showHidden = false}) async {
    List<Directory> storages = await getStorageList();
    List<FileSystemEntity> files = <FileSystemEntity>[];
    for (Directory dir in storages) {
      List<FileSystemEntity> allFilesInPath = [];
      // This is important to catch storage errors
      try {
        allFilesInPath =
            await getAllFilesInPath(dir.path, showHidden: showHidden);
      } catch (e) {
        allFilesInPath = [];
      }
      files.addAll(allFilesInPath);
    }
    return files;
  }

  static Future<List<FileSystemEntity>> getRecentFiles(
      {bool showHidden = false}) async {
    List<FileSystemEntity> files = await getAllFiles(showHidden: showHidden);
    files.sort((a, b) => File(a.path)
        .lastAccessedSync()
        .compareTo(File(b.path).lastAccessedSync()));
    return files.reversed.toList();
  }

//static Future<List<FileSystemEntity>> searchFiles(String query,
//    {bool showHidden = false}) async {
//  List<Directory> storage = await getStorageList();
//  List<FileSystemEntity> files = <FileSystemEntity>[];
//  for (Directory dir in storage) {
//    List fs = await getAllFilesInPath(dir.path, showHidden: showHidden);
//    for (FileSystemEntity fs in fs) {
//      if (basename(fs.path).toLowerCase().contains(query.toLowerCase())) {
//        files.add(fs);
//      }
//    }
//  }
//  return files;
//}

  /// Get all files
  static Future<List<FileSystemEntity>> getAllFilesInPath(String path,
      {bool showHidden = false}) async {
    List<FileSystemEntity> files = <FileSystemEntity>[];
    Directory d = Directory(path);
    List<FileSystemEntity> l = d.listSync();
    for (FileSystemEntity file in l) {
      if (FileSystemEntity.isFileSync(file.path)) {
        if (!showHidden) {
          if (!file.path.startsWith(".")) {
            files.add(file);
          }
        } else {
          files.add(file);
        }
      } else {
        if (!file.path.contains('/storage/emulated/0/Android')) {
//          print(file.path);
          if (!showHidden) {
            if (!file.path.startsWith(".")) {
              files.addAll(
                  await getAllFilesInPath(file.path, showHidden: showHidden));
            }
          } else {
            files.addAll(
                await getAllFilesInPath(file.path, showHidden: showHidden));
          }
        }
      }
    }
//    print(files);
    return files;
  }

//static String formatTime(String iso) {
//  DateTime date = DateTime.parse(iso);
//  DateTime now = DateTime.now();
//  DateTime yDay = DateTime.now().subtract(Duration(days: 1));
//  DateTime dateFormat = DateTime.parse(
//      '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}T00:00:00.000Z');
//  DateTime today = DateTime.parse(
//      '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}T00:00:00.000Z');
//  DateTime yesterday = DateTime.parse(
//      '${yDay.year}-${yDay.month.toString().padLeft(2, '0')}-${yDay.day.toString().padLeft(2, '0')}T00:00:00.000Z');

//  if (dateFormat == today) {
//    return 'Today ${DateFormat('HH:mm').format(DateTime.parse(iso))}';
//  } else if (dateFormat == yesterday) {
//    return 'Yesterday ${DateFormat('HH:mm').format(DateTime.parse(iso))}';
//  } else {
//    return '${DateFormat('MMM dd, HH:mm').format(DateTime.parse(iso))}';
//  }
//}

//static List<FileSystemEntity> sortList(
//    List<FileSystemEntity> list, int sort) {
//  switch (sort) {

//    /// Sort by name
//    case 0:
//      list.sort((f1, f2) => basename(f1.path)
//          .toLowerCase()
//          .compareTo(basename(f2.path).toLowerCase()));
//      break;

//    case 1:
//      list.sort((f1, f2) => basename(f2.path)
//          .toLowerCase()
//          .compareTo(basename(f1.path).toLowerCase()));
//      break;

//    /// Sort by date
//    case 2:
//      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
//          f1.statSync().modified.compareTo(f2.statSync().modified));
//      break;

//    case 3:
//      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
//          f2.statSync().modified.compareTo(f1.statSync().modified));
//      break;

//    /// sort by size
//    case 4:
//      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
//          f2.statSync().size.compareTo(f1.statSync().size));
//      break;

//    case 5:
//      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
//          f1.statSync().size.compareTo(f2.statSync().size));
//      break;

//    default:
//      list.sort();
//  }

//  return list;
//}
}
