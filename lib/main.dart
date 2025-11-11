import 'package:flutter/material.dart';
import 'package:pos/pages/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'POS App',
      home: MainPage()
    );
  }
}
