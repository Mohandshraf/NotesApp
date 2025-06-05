import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  FetchAll() async {
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBoxName);
      List<NoteModel> notes = notesbox.values.toList();

      emit(AddNotesSuccess(notes));
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
