import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/views/add_note_buttom_sheet.dart';
import 'package:notes_app/views/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),

      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: const Color.fromARGB(255, 65, 57, 57),
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20), // كل الزوايا دائرية
                ),
              ),
              builder: (context) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: AddButtom(),
                );
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 59, 57, 57),
        body: NotesViewBody(),
      ),
    );
  }
}
