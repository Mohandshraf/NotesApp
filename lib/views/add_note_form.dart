import 'package:flutter/material.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/cubits/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/custom_buttom.dart';
import 'package:notes_app/views/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 6,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          BlocBuilder<AddNotesCubit, NotesState>(
            builder: (context, state) {
              return CustomButtom(
                isLoading: state is NotesLoaded ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.green.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addnote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
