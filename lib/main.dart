import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/notes_views.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter(); // تهيئة Hive لتخزين البيانات

  await Hive.openBox(kNotesBoxName); // فتح صندوق البيانات 'notes'
  runApp(
    DevicePreview(
      enabled: true, // خليه true وقت التطوير فقط
      builder: (context) => const NotesApp(), // التطبيق الأصلي
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // يحدد اللغة حسب الجهاز
      builder: DevicePreview.appBuilder, // يبني التطبيق داخل preview
      home: NotesView(), // الصفحة الرئيسية للتطبيق
    );
  }
}
