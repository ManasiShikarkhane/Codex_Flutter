import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ass3 extends StatelessWidget {
  const Ass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ASS3"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 145, 138, 138),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              //margin: EdgeInsets.only(left: 50),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
              Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 78, 0, 23),
                  margin: EdgeInsets.all(10)),
            ],
          ),
        ),
      ),
    );
  }
}
