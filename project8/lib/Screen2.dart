import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String name;
  const Screen2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2:  $name"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
