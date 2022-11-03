import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = kDebugMode;
    assert(() {
      inDebug = true;
      return true;
    }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return customErrorWidget(details);
  };
  runApp(
    GetMaterialApp(
      title: "EFile",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

Widget customErrorWidget(FlutterErrorDetails details) {
  return Scaffold(
    body: ListView(
      children: [
        Container(
          color: Colors.white,
          child: Column(children: [
            const ListTile(
              title: Text("Exception"),
            ),
            Text(
              details.exceptionAsString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ]),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            const ListTile(
              title: Text("StackTrace"),
            ),
            Text(
              details.stack.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ]),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            const ListTile(
              title: Text("Summary"),
            ),
            Text(
              details.summary
                  .toJsonMap(const DiagnosticsSerializationDelegate(
                      includeProperties: true))
                  .toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ]),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            const ListTile(
              title: Text("Context"),
            ),
            Text(
              details.context!.toStringDeep(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          ]),
        ),
      ],
    ),
  );
}
