import 'package:exam_test/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const TestApp(),
  );
}

//teststudy

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}
