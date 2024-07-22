import 'package:flutter/material.dart';
import 'package:project8/MyContainer.dart';
import 'package:project8/Screen1.dart';
import 'package:project8/Screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen3(),
    );
  }
}
