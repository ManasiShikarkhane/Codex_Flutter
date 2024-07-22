import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  final String name;
  const Screen4({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen4:  $name"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
