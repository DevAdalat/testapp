import 'package:e_file/app/data/notes/note_model.dart';
import 'package:isar/isar.dart';

class NoteStorage {
  static late Isar _note;
  static List<NoteModel> notes = [];

  static NoteStorage get instance => NoteStorage();

  static Future<void> init() async {
    _note = await Isar.open([NoteModelSchema]);
  }

  static void getNotes() async {
    notes = await _note.txn((() {
      return _note.noteModels.where().findAll();
    }));
  }

  static Future<int> setNotes(NoteModel model) async {
    notes.add(model);
    return _note.writeTxn((() {
      return _note.noteModels.put(model);
    }));
  }

  static void deleteModel(NoteModel model) async {
    final isDeleted = await _note.writeTxn((() {
      return _note.noteModels.delete(model.id);
    }));
    if (isDeleted) notes.remove(model);
  }
}
