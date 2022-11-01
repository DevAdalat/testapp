import 'package:hive_flutter/hive_flutter.dart';

class AppSettings {
  static bool showApkIcon = true;
  static bool showFileSize = true;
  static bool showModifiedDate = true;
  static bool showHiddenFolders = true;
  static bool showMusicThumbnail = true;
  static bool showPhotoPThumbnail = true;
  static bool showModifiedTime = true;
  static bool showVideosThumbnail = true;
  static final settings = Hive.box("EFileSettings");

  set setShowApkIcon(bool value) {
    showApkIcon = value;
    settings.put("showApkIcon", value);
  }

  set setShowFileSize(bool value) {
    showFileSize = value;
    settings.put("showFileSize", value);
  }

  set setShowModifiedDate(bool value) {
    showModifiedDate = value;
    settings.put("showModifiedDate", value);
  }

  set setShowHiddenFolders(bool value) {
    showHiddenFolders = value;
    settings.put("showHiddenFolders", value);
  }

  set setShowMusicThumbnail(bool value) {
    showMusicThumbnail = value;
    settings.put("showMusicThumbnail", value);
  }

  set setShowPhotoPThumbnail(bool value) {
    showPhotoPThumbnail = value;
    settings.put("showPhotoPThumbnail", value);
  }

  set setShowModifiedTime(bool value) {
    showModifiedTime = value;
    settings.put("showModifiedTime", value);
  }

  set setShowVideoThumbnail(bool value) {
    showVideosThumbnail = value;
    settings.put("showVideoThumbnail", value);
  }

  static Future<void> init() async {
    showApkIcon = settings.get("showApkIcon", defaultValue: showApkIcon);
    showFileSize = settings.get("showFileSize", defaultValue: showFileSize);
    showModifiedDate =
        settings.get("showModifiedDate", defaultValue: showModifiedDate);
    showHiddenFolders =
        settings.get("showHiddenFolders", defaultValue: showHiddenFolders);
    showMusicThumbnail =
        settings.get("showMusicThumbnail", defaultValue: showMusicThumbnail);
    showPhotoPThumbnail =
        settings.get("showPhotoPThumbnail", defaultValue: showPhotoPThumbnail);
    showModifiedTime =
        settings.get("showModifiedTime", defaultValue: showModifiedTime);
    showVideosThumbnail =
        settings.get("showVideosThumbnail", defaultValue: showVideosThumbnail);
  }

  void updateData() {
    showApkIcon = settings.get("showApkIcon", defaultValue: showApkIcon);
    showFileSize = settings.get("showFileSize", defaultValue: showFileSize);
    showModifiedDate =
        settings.get("showModifiedDate", defaultValue: showModifiedDate);
    showHiddenFolders =
        settings.get("showHiddenFolders", defaultValue: showHiddenFolders);
    showMusicThumbnail =
        settings.get("showMusicThumbnail", defaultValue: showMusicThumbnail);
    showPhotoPThumbnail =
        settings.get("showPhotoPThumbnail", defaultValue: showPhotoPThumbnail);
    showModifiedTime =
        settings.get("showModifiedTime", defaultValue: showModifiedTime);
    showVideosThumbnail =
        settings.get("showVideosThumbnail", defaultValue: showVideosThumbnail);
  }
}
