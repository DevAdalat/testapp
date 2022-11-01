import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_note_controller.dart';

class CreateNoteView extends GetView<CreateNoteController> {
  const CreateNoteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateNoteView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateNoteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
