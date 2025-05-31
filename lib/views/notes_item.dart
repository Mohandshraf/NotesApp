import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notesitem extends StatelessWidget {
  const Notesitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFCC80), // لون الخلفية
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Flutter Tips",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 8), // 👈 المسافة بين العنوان والوصف
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 8),
                    child: Text(
                      "Learn how to build beautiful apps with Flutter.",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
              trailing: Icon(FontAwesomeIcons.trash, color: Colors.black),
            ),

            Padding(
              padding: EdgeInsets.only(right: 16, top: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 10),
                child: Text(
                  "Created on: 2025-30-05",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
