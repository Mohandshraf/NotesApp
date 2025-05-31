import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:notes_app/views/notes_views.dart';

void main() {
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
