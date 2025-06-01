import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_app_bar.dart';
import 'package:notes_app/views/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 90, 88, 88), // لون الخلفية
      child: Column(
        children: [
          CostumAppBar(title: "Edit Note", icon: Icons.check),
          CustomTextField(hintText: "Title"),
          CustomTextField(hintText: "Content", maxLines: 6),
        ],
      ),
    );
  }
}
