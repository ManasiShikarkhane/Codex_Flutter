import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Ass4 extends StatelessWidget {
  const Ass4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Box Decoration",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 204, 0, 0)),
      body: Center(
          child: Container(
        color: Color.fromARGB(255, 190, 175, 175),
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 62, 0, 36),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
