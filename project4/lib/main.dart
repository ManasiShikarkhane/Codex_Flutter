import 'package:flutter/material.dart';
import 'package:project4/Ass1.dart';
import 'package:project4/Ass2.dart';
import 'package:project4/Ass3.dart';
import 'package:project4/Ass4.dart';
import 'package:project4/Ass5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ass5(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
