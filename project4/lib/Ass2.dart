import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ass2 extends StatelessWidget {
  const Ass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ASS2"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 145, 138, 138),
      ),
      body: Center(
          child: Container(
        height: 500,
        width: 500,
        color: const Color.fromARGB(255, 135, 131, 118),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 78, 0, 23),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 78, 0, 23),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 78, 0, 23),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 78, 0, 23),
                margin: EdgeInsets.only(left: 50),
              )
            ],
          ),
        ),
      )),
    );
  }
}
