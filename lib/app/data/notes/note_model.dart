import 'package:isar/isar.dart';

part 'note_model.g.dart';

@Collection()
class NoteModel {
  Id id = Isar.autoIncrement;
  String title;
  String description;
  NoteModel({required this.title, required this.description});
}
