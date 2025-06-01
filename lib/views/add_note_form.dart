import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_buttom.dart';
import 'package:notes_app/views/custom_text_field.dart';

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
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
