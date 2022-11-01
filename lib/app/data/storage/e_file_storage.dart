// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';

import 'package:external_path/external_path.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storage_info/storage_info.dart';

class EFileStorage {
  final _fFStorage = Hive.box("EFileStorage");
  List<String> _storageRootPath = [];

  double _percentUsed = 0;

  double get percentUsed => _percentUsed;

  List<String> get storageRootPath => _storageRootPath;

  set setStorageRootPath(List<String> setStorageRootPath) {
    _storageRootPath = setStorageRootPath;
  }

  String get freeDiskSpace {
    return _fFStorage.get("freeDiskSpace", defaultValue: "null") as String;
  }

  set setfreeDiskSpace(String setfreeDiskSpace) {
    _fFStorage.put("freeDiskSpace", setfreeDiskSpace);
  }

  String get usedSpace {
    return _fFStorage.get("usedSpace", defaultValue: "null") as String;
  }

  set setUsedSpace(String setUsedSpace) {
    _fFStorage.put("freeDiskSpace", setUsedSpace);
  }

  String get totalSpace {
    return _fFStorage.get("totalSpace", defaultValue: "null") as String;
  }

  set setTotalSpace(String setTotalSpace) {
    _fFStorage.put("totalSpace", setTotalSpace);
  }

  String get currentStorage {
    return _fFStorage.get("currentStorage", defaultValue: "/sdcard") as String;
  }

  set setCurrentStorage(String setCurrentStorage) {
    _fFStorage.put("currentStorage", setCurrentStorage);
  }

  Future<void> initEFileStorage() async {
    if (!kIsWeb) {
      final _diskPaths = await ExternalPath.getExternalStorageDirectories();
      final _freeDiskSpace = await StorageInfo.getStorageFreeSpace;
      final _totalDiskSpace = await StorageInfo.getStorageTotalSpace;
      final _usedDiskSpace = await StorageInfo.getStorageUsedSpace;
      final _usedSpace = bytesToReadableData(_usedDiskSpace, 2);
      final _totalSpace = bytesToReadableData(_totalDiskSpace, 2);
      _storageRootPath = _diskPaths;
      _percentUsed = _usedDiskSpace / _totalDiskSpace * 100 / 100;
      _fFStorage.put("freeDiskSpace", bytesToReadableData(_freeDiskSpace, 2));
      _fFStorage.put("usedSpace", _usedSpace);
      _fFStorage.put("totalSpace", _totalSpace);
      _fFStorage.put("currentStorage", _diskPaths[0]);
    }
  }

  String bytesToReadableData(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return '${(bytes / pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
  }
}
