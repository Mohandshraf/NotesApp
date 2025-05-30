import 'package:flutter/material.dart';

class Notesitem extends StatelessWidget {
  const Notesitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Flutter Tips",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8), // 👈 المسافة بين العنوان والوصف
                Text(
                  "Learn how to build beautiful apps with Flutter.",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            trailing: Icon(Icons.delete, color: Colors.black, size: 30),
          ),

          SizedBox(height: 10),

          Text(
            "Created on: 2023-10-01",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
