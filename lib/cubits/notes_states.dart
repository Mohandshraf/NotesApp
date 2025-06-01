import 'package:flutter/foundation.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoaded extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String errorMassage;

  NotesFailure(this.errorMassage);
}
