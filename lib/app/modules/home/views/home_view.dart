import 'package:e_file/app/data/notes/note_model.dart';
import 'package:e_file/app/data/notes/note_storage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (((controller) => Scaffold(
          body: ListView.builder(
              itemBuilder: (((context, index) {
                return ListTile(
                    title: Text(NoteStorage.notes[index].title),
                    subtitle: Text(NoteStorage.notes[index].description));
              })),
              itemCount: NoteStorage.notes.length),
          floatingActionButton: FloatingActionButton(
              onPressed: ((() {
                Get.dialog(
                  AlertDialog(
                    title: const Text("Add Note"),
                    content: SingleChildScrollView(
                      child: Column(children: [
                        TextField(
                          controller: controller.titleController,
                          decoration: const InputDecoration(
                            hintText: "Note Title",
                          ),
                        ),
                        TextField(
                            controller: controller.descriptionController,
                            decoration: const InputDecoration(
                              hintText: "Note Description",
                            )),
                      ]),
                    ),
                    actions: [
                      TextButton(
                        onPressed: ((() async {
                          final note = NoteModel(
                              title: controller.titleController.text,
                              description:
                                  controller.descriptionController.text);
                          await NoteStorage.instance.setNotes(note);
                          controller.update();
                        })),
                        child: const Text("Save"),
                      ),
                    ],
                  ),
                );
              })),
              child: const Icon(Icons.add_rounded))))),
    );
  }
}
