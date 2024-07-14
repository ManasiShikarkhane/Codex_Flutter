import 'package:flutter/material.dart';

class Ass1 extends StatelessWidget {
  const Ass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ASS1"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 145, 138, 138),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Color.fromARGB(255, 122, 2, 38),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 200,
                color: Color.fromARGB(255, 122, 2, 38),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 200,
                color: Color.fromARGB(255, 122, 2, 38),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 200,
                color: Color.fromARGB(255, 122, 2, 38),
                margin: EdgeInsets.only(left: 50),
              ),
              Container(
                height: 100,
                width: 200,
                color: Color.fromARGB(255, 122, 2, 38),
                margin: EdgeInsets.only(left: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
