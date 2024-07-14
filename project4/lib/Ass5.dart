import 'package:flutter/material.dart';

class Ass5 extends StatelessWidget {
  const Ass5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ASS 5"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 110, 85, 85),
        ),
        body: Container(
          height: 200,
          color: Color.fromARGB(255, 169, 163, 163),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 0, 23),
                      borderRadius: BorderRadius.circular(120)),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 0, 23),
                        borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.all(10)),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 0, 23),
                        borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.all(10)),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 0, 23),
                        borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.all(10)),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 0, 23),
                        borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.all(10)),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 78, 0, 23),
                        borderRadius: BorderRadius.circular(120)),
                    margin: EdgeInsets.all(10)),
              ],
            ),
          ),
        ));
  }
}
