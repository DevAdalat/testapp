// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
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
      home: Picker(),
    );
  }
}

class Picker extends StatelessWidget {
  Picker({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: TextField(
                controller: _controller,
                maxLines: null,
                // textInputAction: TextInputAction.done,
                // onSubmitted: (text) async {
                //   try {
                //     if (text.isNotEmpty) {
                //       final registry = JsonWidgetRegistry.instance;
                //       final data = json.decode(text);
                //       final wid =
                //           JsonWidgetData.fromDynamic(data, registry: registry);
                //       Navigator.of(context).push(MaterialPageRoute(
                //           builder: (context) => FullWidgetPage(data: wid!)));
                //     } else {
                //       ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(content: Text('Empty text')));
                //     }
                //   } catch (e) {
                //     ScaffoldMessenger.of(context)
                //         .showSnackBar(SnackBar(content: Text(e.toString())));
                //   }
                // }
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                try {
                  if (_controller.text.isNotEmpty) {
                    final registry = JsonWidgetRegistry.instance;
                    final data = json.decode(_controller.text);
                    final wid =
                        JsonWidgetData.fromDynamic(data, registry: registry);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FullWidgetPage(data: wid!)));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Empty text')));
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(e.toString())));
                }
              },
              child: const Text('Load'),
            ),
          )
        ],
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
