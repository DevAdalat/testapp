import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class HomeController extends GetxController {
  String agetApplicationDocumentsDirectory = "";
  String agetTemporaryDirectory = "";
  String agetExternalStorageDirectories = "";
  String agetExternalStorageDirectory = "";
  String agetExternalCacheDirectories = "";
  String agetApplicationSupportDirectory = "";

  agetDirs() async {
    final docsDir = await getApplicationDocumentsDirectory();
    agetApplicationDocumentsDirectory = docsDir.path;
    final tempDir = await getTemporaryDirectory();
    agetTemporaryDirectory = tempDir.path;
    final extdirs = await getExternalStorageDirectories();
    agetExternalCacheDirectories =
        extdirs!.map(((e) => e.path)).toList().toString();
    final extdir = await getExternalStorageDirectory();
    agetExternalStorageDirectory = extdir!.path;
    final cacheDir = await getExternalCacheDirectories();
    agetExternalCacheDirectories =
        cacheDir!.map(((e) => e.path)).toList().toString();
    final supportDir = await getApplicationSupportDirectory();
    agetApplicationSupportDirectory = supportDir.path;
		update();
  }
}
