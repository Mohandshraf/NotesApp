import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_buttom_sheet.dart';
import 'package:notes_app/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddButtom();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      backgroundColor: const Color.fromARGB(255, 59, 57, 57),
      body: NotesViewBody(),
    );
  }
}
