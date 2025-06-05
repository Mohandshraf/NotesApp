import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/cubits/notes_states.dart';
import 'package:notes_app/views/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddButtom extends StatefulWidget {
  const AddButtom({super.key});

  @override
  State<AddButtom> createState() => _AddButtomState();
}

class _AddButtomState extends State<AddButtom> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          child: BlocConsumer<AddNotesCubit, NotesState>(
            listener: (context, state) {
              if (state is NotesLoaded) {
                setState(() {
                  isLoading = true;
                });
              }
              if (state is NotesFailure) {
                print("Error occurred while adding note ${state.errorMassage}");
              }
              if (state is NotesSuccess) {
                Navigator.pop(context); // إغلاق BottomSheet بعد إضافة الملاحظة
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is NotesLoaded ? true : false,
                child: SingleChildScrollView(
                  child: const AddNoteForm()));
            },
          ),
        ),
      ),
    );
  }
}
