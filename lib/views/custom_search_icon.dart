import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 90, 88, 88),

        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.search, color: Colors.white, size: 25),
    );
  }
}
