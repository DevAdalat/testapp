import 'package:e_file/app/data/notes/note_model.dart';
import 'package:isar/isar.dart';

class NoteStorage {
  late Isar note;
  static List<NoteModel> notes = [];

  static NoteStorage get instance => NoteStorage();

  Future<void> init() async {
    note = await Isar.open([NoteModelSchema]);
  }

  void getNotes() async {
    notes = await note.txn((() {
      return note.noteModels.where().findAll();
    }));
  }

  Future<void> setNotes(NoteModel model) async {
    note.writeTxn((() {
      return note.noteModels.put(model);
    }));
    notes.add(model);
  }

  void deleteModel(NoteModel model) async {
    final isDeleted = await note.writeTxn((() {
      return note.noteModels.delete(model.id);
    }));
    if (isDeleted) notes.remove(model);
  }
}
