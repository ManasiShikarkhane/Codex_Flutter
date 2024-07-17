import 'package:flutter/material.dart';
import 'package:project6/Ass1.dart';
import 'package:project6/Ass2.dart';
import 'package:project6/Ass3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ass3(),
    );
  }
}
