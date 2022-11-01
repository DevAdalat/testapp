import 'dart:io';

import 'package:e_file/app/data/storage/e_file_storage.dart';
import 'package:e_file/app/utils/utils.dart';
import 'package:e_file/app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FileTreeController extends GetxController {
  ScrollController scrollController = ScrollController();
  List<FileSystemEntity> allFiles = [];
  TextEditingController dialogTextController = TextEditingController();
  List<String> fileTime = [];
  List<String> fileSize = [];
  final eStorage = EFileStorage();
  String currnetPath = "";
  late Animation<double> animation;
  late AnimationController animationController;
  List<String> allFileSize = <String>[];
  getFiles(String path) {
    currnetPath = path;
    final dir = Directory(path);
    try {
      final listDirs = dir.listSync();
      final shortData = sortList(listDirs, 0);
      allFiles.clear();
      fileSize.clear();
      fileTime.clear();
      List<FileSystemEntity> folders = [];
      List<FileSystemEntity> homeFiles = [];
      for (var shortDat in shortData) {
        if (shortDat is File) {
          homeFiles.add(shortDat);
        } else {
          folders.add(shortDat);
        }
      }
      allFiles.addAll(folders);
      allFiles.addAll(homeFiles);
      final sizeData = allFiles.map(((e) {
        if (e is File) {
          final file = File(e.path);
          final size = file.lengthSync();
          final reSize = eStorage.bytesToReadableData(size, 2);
          return reSize;
        } else {
          return "<DIR>";
        }
      })).toList();
      fileSize = sizeData;
    } catch (e) {
      currnetPath = dir.parent.path;
      update();
      customSnackbar(e);
    }
  }
}
