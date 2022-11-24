import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfile/app/config/config.dart';
import 'package:tfile/app/tdLibJson/tdlib_core.dart';
import 'package:tfile/my_app.dart';


void main() {
	GetStorage.init();
	Config.init();
	TDLibCore.initialize();
  runApp(
		const MyApp()
 );
}
