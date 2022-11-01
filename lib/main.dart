import 'package:e_file/app/my_app.dart';
import 'package:e_file/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Future.delayed(10.milliseconds);
	Hive.initFlutter();
	await openDB();
//await EFileStorage().initEFileStorage();
//await AppSettings.init();
  runApp(const MyApp());
}
