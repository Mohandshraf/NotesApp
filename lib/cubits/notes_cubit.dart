// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:hive/hive.dart';

class AddNotesCubit extends Cubit<NotesState> {
  AddNotesCubit() : super(NotesInitial());
  addnote(NoteModel note) async {
    emit(NotesLoaded());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBoxName);
      await notesbox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
