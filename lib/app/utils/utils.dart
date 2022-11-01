import 'dart:io';

import 'package:path/path.dart';

List<FileSystemEntity> sortList(List<FileSystemEntity> list, int sort) {
  switch (sort) {

    /// Sort by name
    case 0:
      list.sort((f1, f2) => basename(f1.path)
          .toLowerCase()
          .compareTo(basename(f2.path).toLowerCase()));
      break;

    case 1:
      list.sort((f1, f2) => basename(f2.path)
          .toLowerCase()
          .compareTo(basename(f1.path).toLowerCase()));
      break;

    /// Sort by date
    case 2:
      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
          f1.statSync().modified.compareTo(f2.statSync().modified));
      break;

    case 3:
      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
          f2.statSync().modified.compareTo(f1.statSync().modified));
      break;

    /// sort by size
    case 4:
      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
          f2.statSync().size.compareTo(f1.statSync().size));
      break;

    case 5:
      list.sort((FileSystemEntity f1, FileSystemEntity f2) =>
          f1.statSync().size.compareTo(f2.statSync().size));
      break;

    default:
      list.sort();
  }

  return list;
}
