import 'package:flutter/material.dart';

class Ass5 extends StatelessWidget {
  const Ass5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("ROW ASSIGNMENT 5"),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 169, 137, 151)),
        body: Center(
          child: Container(
            height: 400,
            width: 800,
            color: Color.fromARGB(255, 66, 7, 56),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 177, 142, 0),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 177, 142, 0),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 177, 142, 0),
                  )
                ]),
          ),
        ));
  }
}
