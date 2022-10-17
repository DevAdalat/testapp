import 'dart:ffi';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/generated_bindings.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (((controller) => Scaffold(
              appBar: AppBar(
                title: const Text('HomeView'),
              ),
              body: ListView.builder(itemBuilder: (((context, index) {
                return ListTile(
                  title: Text("Count Number $index"),
                );
              }))),
              floatingActionButton: FloatingActionButton(
                onPressed: ((() {
                  try {
                    NativeLibrary lib =
                        NativeLibrary(DynamicLibrary.open("librtest.so"));
                    final data = lib.get_list().cast<ffi.Pointer<Utf8>>();
                    final dartData = controller.toStringList(data);
                    Get.snackbar("Rust List", dartData.toList().toString());
                    malloc.free(data);
                  } catch (e) {
                    Get.snackbar("Error", e.toString());
                  }
                })),
                child: const Icon(Icons.add_rounded),
              ),
            ))));
  }
}
