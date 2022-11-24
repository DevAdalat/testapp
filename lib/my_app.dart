import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfile/app/routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return DynamicColorBuilder(
			builder: ((lightDynamic, darkDynamic) => GetMaterialApp(
					title: "TFile",
					initialRoute: AppPages.INITIAL,
					getPages: AppPages.routes,
					theme: ThemeData.from(colorScheme: lightDynamic!, useMaterial3: true),
					darkTheme: ThemeData.from(colorScheme: darkDynamic!, useMaterial3: true),
					themeMode: ThemeMode.system,
					onInit: (() {
					}),
					)),
			);
	}
}
