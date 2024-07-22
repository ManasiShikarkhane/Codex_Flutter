import 'package:flutter/material.dart';
import 'package:project8/MyContainer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget MyContainer() {
    return Container(color: Colors.black, height: 200, width: 200);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
              MyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
