import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_buttom.dart';
import 'package:notes_app/views/custom_text_field.dart';

class AddButtom extends StatelessWidget {
  const AddButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 73, 71, 71),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hintText: "Title"),
            CustomTextField(hintText: "Content", maxLines: 6),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
