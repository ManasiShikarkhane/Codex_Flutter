import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ass3 extends StatelessWidget {
  const Ass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Image With hz Scroll"),
        backgroundColor: Color.fromARGB(255, 194, 0, 0),
      ),
      body: Center(
        child: Container(
            color: Color.fromARGB(255, 127, 175, 170),
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: Image.network(
                        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                      height: 300,
                      width: 300,
                      child: Image.network(
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                      margin: EdgeInsets.all(5)),
                  Container(
                      height: 300,
                      width: 300,
                      child: Image.network(
                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                      margin: EdgeInsets.all(5)),
                ],
              ),
            )),
      ),
    );
  }
}
