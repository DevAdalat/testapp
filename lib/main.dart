import 'dart:ffi';

import 'package:extension_test/extention_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:simple_audio/simple_audio.dart';

void main() {
	SimpleAudio.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _output = "";
  String _libPath = "";
  final symController = TextEditingController();
  final dataController = TextEditingController();
  final ext = ExtensionFfiImpl(DynamicLibrary.open("libextension.so"));
	late SimpleAudio audio;

  @override
  initState() {
    super.initState();
		audio = SimpleAudio();
    FilePicker.platform.clearTemporaryFiles();
		audio.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Extension Test")),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      controller: symController,
                      decoration: InputDecoration(
                          hintText: "Symbol Name",
                          label: const Text("Symbol"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ))),
                  const SizedBox(height: 15),
                  TextField(
                      controller: dataController,
                      decoration: InputDecoration(
                          hintText: "Data (In JSON format)",
                          label: const Text("Data"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles();
                            if (result != null) {
                              _libPath = result.files.first.path!;
                            } else {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Please Pick a File")));
                            }
                          },
                          child: const Text("Pick Library"))),
                  Center(
                      child: TextButton(
                          onPressed: () async {
                            try {
															audio.open(_libPath);
															audio.play();
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(e.toString())));
                            }
                          },
                          child: const Text("Play")))
                ],
              ),
            )),
            Expanded(child: SingleChildScrollView(child: Text(_output)))
          ],
        ));
  }
}
