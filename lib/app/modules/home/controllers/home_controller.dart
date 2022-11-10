import 'package:e_file/app/data/notes/note_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

	@override
  onInit(){
    super.onInit();
		NoteStorage.getNotes();
	}

  @override
  dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
  }
}
