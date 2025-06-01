import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1,  this.onSaved});
  final String? hintText;
  final int maxLines;
  final void Function(String?)?  onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),

      child: TextFormField(
        validator: (value){
          if(value?.isEmpty ?? true) {
            return "This field cannot be empty";
          } 
           else {
            return null;

          }
        },
        onSaved: onSaved,
        maxLines: maxLines,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}
