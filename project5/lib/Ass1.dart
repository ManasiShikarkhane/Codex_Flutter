import 'package:flutter/material.dart';

class Ass1 extends StatelessWidget {
  const Ass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Container Image",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 91, 94, 0)),
      body: Container(
        height: double.infinity,
        width: 800,
        color: Color.fromARGB(255, 118, 171, 130),
        child: Container(
          height: 300,
          width: 300,
          margin: EdgeInsets.all(20),
          child: Image.network(
            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
          ),
        ),
      ),
    );
  }
}
