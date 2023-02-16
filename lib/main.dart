// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testapp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
      home: const Picker(),
    );
  }
}

class Picker extends StatelessWidget {
  const Picker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            try {
              final result = await FilePicker.platform.pickFiles();
              if (result != null) {
                final registry = JsonWidgetRegistry.instance;
                final data = json.decode(result.paths.first!);
                final wid =
                    JsonWidgetData.fromDynamic(data, registry: registry);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FullWidgetPage(data: wid!)));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please pick a file')));
              }
            } catch (e) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(e.toString())));
            }
          },
          child: const Text('Pick Json File'),
        ),
      ),
    );
  }
}

class FullWidgetPage extends StatelessWidget {
  const FullWidgetPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final JsonWidgetData data;

  @override
  Widget build(BuildContext context) => data.build(context: context);
}
