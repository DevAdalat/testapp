import 'package:tfile/app/config/config.dart';
import 'package:tfile/app/tdLibJson/tdlibjson.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await TFileConfig.initDatabases();
  !kIsWeb ? TdlibJson.initialize() : null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return !kIsWeb
        ? DynamicColorBuilder(
            builder: ((lightDynamic, darkDynamic) {
              return GetMaterialApp(
                title: "TFile",
                initialRoute: AppPages.INITIAL,
                getPages: AppPages.routes,
                themeMode: ThemeMode.system,
                theme: ThemeData.from(
                  colorScheme: lightDynamic!,
                  useMaterial3: true,
                ),
                darkTheme: ThemeData.from(
                    colorScheme: darkDynamic!, useMaterial3: true),
              );
            }),
          )
        : GetMaterialApp(
            title: "TFile",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.purple,
            ),
          );
  }
}
