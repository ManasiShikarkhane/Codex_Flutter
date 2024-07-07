import 'package:flutter/material.dart';

class Ass1 extends StatelessWidget {
  const Ass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        centerTitle: true,
        actions: [Icon(Icons.adb_sharp)],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 255, 111, 49),
          ),
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 156, 0, 127),
          )
        ],
      ),
    );
  }
}
