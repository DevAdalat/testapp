import 'dart:ffi';

import 'package:e_file/app/data/storage/e_file_storage.dart';
import 'package:e_file/app/data/storage/rust_storage.dart';
import 'package:e_file/app/widgets/custom_widgets.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  FlipCardController cardController = FlipCardController();
  final eStorage = Get.find<EFileStorage>();
  int drawerItemsIndex = 0;
  RxInt currentStorage = 0.obs;
  RxString totalSizeVideos = "".obs;
  RxString totalSizeImages = "".obs;
  RxString totalSizeMusics = "".obs;
  RxString totalSizeAPKs = "".obs;
  RxString totalSizeDocs = "".obs;
  RxString totalSizeOthers = "".obs;
  List<String> drawerItems = [
    "Home",
    "Notes",
    "File Tree",
    "Download Manager",
    "Settings"
  ];

  List<IconData> drawerItemsIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.noteSticky,
    FontAwesomeIcons.file,
    FontAwesomeIcons.cloudArrowDown,
    FontAwesomeIcons.gears
  ];

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  void chnageHomeIndex(int? index) {
    cardController.toggleCard();
  }

  handleStorage(int stoarge) async {
    if (!kIsWeb) {
      if (eStorage.storageRootPath.length != 1) {
        currentStorage.value = stoarge;
        eStorage.setCurrentStorage = eStorage.storageRootPath[stoarge];
      } else {
        Get.closeCurrentSnackbar();
        customSnackbar("SD card not installed.");
      }
    } else {
      customSnackbar("Web not supported");
    }
  }

  getAllTypesFilesSizes() async {
    final path = eStorage.currentStorage.toCString();
    NativeStorage nStorage =
        NativeStorage(DynamicLibrary.open("libstorage.so"));
    totalSizeImages.value = nStorage.init_image_size(path).toDString();
    totalSizeMusics.value = nStorage.init_musics_size(path).toDString();
    totalSizeVideos.value = nStorage.init_videos_size(path).toDString();
    totalSizeDocs.value = nStorage.init_docs_size(path).toDString();
    totalSizeAPKs.value = nStorage.init_apks_size(path).toDString();
    totalSizeOthers.value = nStorage.init_others_size(path).toDString();

    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_image_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_image_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeImages.value = size;
        break;
      }
    }
    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_videos_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_videos_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeVideos.value = size;
        break;
      }
    }
    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_musics_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_musics_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeMusics.value = size;
        break;
      }
    }
    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_docs_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_docs_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeDocs.value = size;
        break;
      }
    }
    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_others_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_others_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeOthers.value = size;
        break;
      }
    }

    while (true) {
      await Future.delayed(100.milliseconds);
      if (nStorage.is_apk_size_work_done().toDString() == "true") {
        String sizeBytes = nStorage.get_apk_size().toDString();
        String size = eStorage.bytesToReadableData(int.parse(sizeBytes), 2);
        totalSizeAPKs.value = size;
        break;
      }
    }
    nStorage.rust_cstr_free(path);
  }

  @override
  void onInit() {
    super.onInit();
    if (!kIsWeb) {
			getAllTypesFilesSizes();
    } else {
      const webNotSupp = "Web not supported";
      totalSizeAPKs.value = webNotSupp;
      totalSizeDocs.value = webNotSupp;
      totalSizeVideos.value = webNotSupp;
      totalSizeImages.value = webNotSupp;
      totalSizeMusics.value = webNotSupp;
      totalSizeOthers.value = webNotSupp;
    }
  }
}
