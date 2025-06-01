import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_search_icon.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
