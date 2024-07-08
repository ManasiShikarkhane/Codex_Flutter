import 'package:flutter/material.dart';

class Ass6 extends StatelessWidget {
  const Ass6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ROW ASSIGNMENT 6"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 139, 140, 140)),
      body: SizedBox(
        child: Container(
          color: Color.fromARGB(255, 29, 13, 24),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  color: Color.fromARGB(255, 139, 140, 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  color: Color.fromARGB(255, 139, 140, 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                      Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 66, 7, 56)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
