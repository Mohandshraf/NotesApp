import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 57, 57),
      body: NotesViewBody(),
    );
  }
}
