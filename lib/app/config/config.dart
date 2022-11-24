import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Config {
	static late String tdDatabasePath;
	static late String tdFilesPath;

	static init() async {
		final path = await getApplicationDocumentsDirectory();
		if (Directory("${path.path}/database").existsSync() && Directory("${path.path}/tdfiles").existsSync()) {
			tdDatabasePath = "${path.path}/database";
			tdFilesPath = "${path.path}/tdfiles";
		} else {
			Directory("${path.path}/database").createSync(recursive: true);
			Directory("${path.path}/tdfiles").createSync(recursive: true);
			tdDatabasePath = "${path.path}/database";
			tdFilesPath = "${path.path}/tdfiles";
		}
	}
}
