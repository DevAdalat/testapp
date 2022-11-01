import 'dart:io';

class HeavyTasks {
	String path;
	HeavyTasks({required this.path});

	allFilesInStorage(){
		Directory dir = Directory(path);
    List<String> allHomeFiles = [];
    List<String> allFileInStoarge = [];
    final homeFiles = dir.listSync();
    for (var homeFile in homeFiles) {
      if (homeFile is Directory) {
        allHomeFiles.add(homeFile.path);
      }
    }
    allHomeFiles.remove("$path/Android");
    for (var allHomeFile in allHomeFiles) {
      Directory dir = Directory(allHomeFile);
      final dddd = dir.listSync(recursive: true);
      for (var ddd in dddd) {
        if (ddd is File) {
          allFileInStoarge.add(ddd.path);
        }
      }
    }
    return allFileInStoarge;
	}
}

class IsolateOutData {
	List<FileSystemEntity> allFiles;
	IsolateOutData({required this.allFiles});
}
