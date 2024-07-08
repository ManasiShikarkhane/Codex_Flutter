import 'package:flutter/material.dart';
import 'package:project2/Ass1.dart';
import 'package:project2/Ass2.dart';
import 'package:project2/Ass3.dart';
import 'package:project2/Ass4.dart';
import 'package:project2/Ass5.dart';
import 'package:project2/Ass6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ass6(),
    );
  }
}
