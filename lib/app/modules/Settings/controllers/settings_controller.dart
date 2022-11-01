import 'package:e_file/app/data/settings/app_settings.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  RxBool showApkIcon = AppSettings.showApkIcon.obs;
  RxBool showFileSize = AppSettings.showFileSize.obs;
  RxBool showModifiedDate = AppSettings.showModifiedDate.obs;
  RxBool showHiddenFolders = AppSettings.showHiddenFolders.obs;
  RxBool showModifiedTime = AppSettings.showModifiedTime.obs;
  RxBool showVideoThumbnail = AppSettings.showVideosThumbnail.obs;
  RxBool showMusicThumbnail = AppSettings.showMusicThumbnail.obs;
  RxBool showPhotoPThumbnail = AppSettings.showPhotoPThumbnail.obs;
  final appSettings = Get.find<AppSettings>();

  void showHiddenFoldersSet(bool value) {
		appSettings.setShowHiddenFolders = value;
  }

  void showModifiedDateSet(bool value) {
		appSettings.setShowModifiedDate = value;
  }

  void showFileSizeSet(bool value) {
		appSettings.setShowFileSize = value;
  }

  void showModifiedTimeSet(bool value) {
		appSettings.setShowModifiedTime = value;
  }

  void showVideoThumbnailSet(bool value) {
		appSettings.setShowVideoThumbnail = value;
  }

  void showMusicThumbnailSet(bool value) {
		appSettings.setShowMusicThumbnail = value;
  }

  void showPhotoPThumbnailSet(bool value) {
		appSettings.setShowPhotoPThumbnail = value;
  }
}
