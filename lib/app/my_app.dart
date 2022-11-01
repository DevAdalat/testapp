import 'package:e_file/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "EFile",
      initialRoute: AppPages.INITIAL(),
      getPages: AppPages.routes,
    );
  }
}
