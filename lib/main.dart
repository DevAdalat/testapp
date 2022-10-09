import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
	await Future.delayed(50.milliseconds);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
    ),
  );
}
