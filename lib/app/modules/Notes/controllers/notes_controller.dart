import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:random_string/random_string.dart';

class NotesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  bool isShowIcon = false;
  TextEditingController notesSearchController = TextEditingController();
  int toggleSwitchIndex = 0;
  int notesSwitcherValue = 0;
  List<Map<String, String>> sINotes = [];
  List<Map<String, String>> sENotes = [];
  List<Map<String, String>> eNotes = [];

  void changeIndex(int? index) {
    toggleSwitchIndex = index!;
    update();
  }

  void notesSwitcherHandler(int index) {
    notesSwitcherValue = index;
  }

  getNotes() {
    var box = Hive.box("Notes");
    for (var key in box.keys.toList()) {
      sINotes.add(box.get(key, defaultValue: {}) as Map<String, String>);
    }
  }

  getSNotes() {
    var box = Hive.box("SNotes");
    for (var key in box.keys.toList()) {
      sINotes.add(box.get(key, defaultValue: {}) as Map<String, String>);
    }
  }

  decryptENote() {
    var box = Hive.box("ENotes");
    for (var key in box.keys.toList()) {
      final eNote = box.get(key) as Map<String, int>;
      final eTitle = eNote["title"];
      final eMessage = eNote["message"];
      final title = eTitle.toString().decode();
      final note = eMessage.toString().decode();
      eNotes.add({"title": title, "message": note});
    }
  }

  void createNote(String title, String message) {
    String key = randomAlphaNumeric(5);
    Map<String, String> data = {"title": title, "message": message};
    Hive.box("Notes").put(key, data);
  }

  void createSNote(String title, String message) {
    String key = randomAlphaNumeric(8);
    Map<String, String> data = {"title": title, "message": message};
    Hive.box("SNotes").put(key, data);
  }

  void createENote(String title, String message) {
    String key = randomAlphaNumeric(15);
    Map<String, int> data = {
      "title": int.parse(title.encode()),
      "message": int.parse(message.encode())
    };
    Hive.box("ENotes").put(key, data);
  }

  @override
  onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: 260.milliseconds,
    );
    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: animationController);
    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    getNotes();
    super.onInit();
  }

  @override
  dispose() {
    notesSearchController.dispose();
    animationController.dispose();
    super.dispose();
  }
}

extension ToBinary on String {
  String encode() {
    return codeUnits.map((v) => v.toRadixString(2).padLeft(8, '0')).join(" ");
  }

  String decode() {
    return String.fromCharCodes(split(" ").map((v) => int.parse(v, radix: 2)));
  }
}

