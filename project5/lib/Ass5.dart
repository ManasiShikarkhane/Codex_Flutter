import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ass5 extends StatelessWidget {
  const Ass5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Box Decoration Image ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 40, 0, 0),
        ),
        body: Center(
          child: Container(
              // color: Color.fromARGB(255, 255, 255, 255),
              //height: double.infinity,
              child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                          ),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.black, width: 3.0),
                      borderRadius: BorderRadius.circular(200.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ]))),
        ));
  }
}
