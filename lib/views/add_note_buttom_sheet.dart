import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_form.dart';

class AddButtom extends StatelessWidget {
  const AddButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 73, 71, 71),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}
