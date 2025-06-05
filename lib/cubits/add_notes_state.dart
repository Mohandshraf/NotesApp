import 'package:notes_app/models/note_model.dart';

abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {
  List<NoteModel> notes;
  AddNotesSuccess(this.notes);
}

class AddNotesFailure extends AddNotesState {
  final String error;

  AddNotesFailure(this.error);
}
