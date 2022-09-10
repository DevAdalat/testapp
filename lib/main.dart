import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return Scaffold(
				appBar: AppBar(
					title: const Text("Simple File Manger"),
					),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text(controller.allFiles[index]),
							subtitle: Text(controller.fileTime[index]),
							onTap: (() {
								controller.navigatePath(controller.allFiles[index]);
								controller.update();
							})
              ),
            );
          }),
          itemCount: controller.allFiles.length,
        ),
      );
    });
  }
}

class HomeController extends GetxController {
  List<String> allFiles = [];
	List<String> fileTime = [];

  getFiles(String path) {
    final files = Directory(path).listSync();
     final myFile = files.map(((e) => e.path)).toList();
		 allFiles = myFile;
		 files.forEach(((element) {
			 if (element is File) {
			 	final file = File(element.path);
				fileTime.add(file.lastModifiedSync().toString());
			 } else {
			   fileTime.add("Dir");
			 }
		 }));
  }

	navigatePath(String path){
		if (kIsWeb) {
			allFiles = ["Sub", "Sub1", "Sub2"];
			fileTime = ["11 Aug", "15 Aug", "17 Aug"];
		} else {
			if (FileSystemEntity.isDirectorySync(path)){
				getFiles(path);
			}
		}
	}

  @override
  onInit() {
    if (kIsWeb) {
      allFiles = ["Folder", "Folder1", "Folder2"];
			fileTime = ["12 Aug", "13 Aug", "14 Aug"];
    } else {
      getFiles("/storage/emulated/0");
    }
    super.onInit();
  }
}
