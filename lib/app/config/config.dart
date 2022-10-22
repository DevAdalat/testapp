import 'package:tfile/app/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class TFileConfig {
  static late String tdFilesPath;
  static late String tdDatabasePath;
  static initDatabases() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    await Hive.openBox("UserDatabase");
  }

  static initFiles() async {
    final docDir = await getApplicationDocumentsDirectory();
    final externalStoageFilesDir = await getExternalStorageDirectory();
    tdFilesPath = externalStoageFilesDir?.path ?? "$docDir/files";
    tdDatabasePath = "${docDir.path}/TDDatabse";
//  final docPath = docDir.path;
//	final externalStoageFilesPath = externalStoageFilesDir!.path;
//	final databaseDirectory = "$docPath/TDDatabase";
//	final isDatabaseDirectorExist = await Directory(databaseDirectory).exists();
//	if (!isDatabaseDirectorExist) {
//		final dbDir = Directory(databaseDirectory);
//		await dbDir.create(recursive: true);
//	}
//}
  }
}
