import 'package:flutter/material.dart';

class Ass4 extends StatelessWidget {
  const Ass4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ASS 4"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 145, 138, 138),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: const Color.fromARGB(255, 135, 131, 118),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
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
      ),
    );
  }
}
