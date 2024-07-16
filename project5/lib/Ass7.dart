import 'package:flutter/material.dart';

class Ass7 extends StatelessWidget {
  const Ass7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile Screen Scrollable",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 213, 203, 255),
        ),
        body: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 219, 172, 172),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(180.0),
                    ),
                  ),
                  Container(
                    child: Text("James Gosling" " Founder of Java",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      decoration:
                          BoxDecoration(border: Border(bottom: BorderSide()))),
                ],
              ),
              Column(
                children: [
                  Container(
                      height: 900,
                      //height: double.infinity,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Container(
                                width: 600,
                                margin: EdgeInsets.only(top: 20),
                                child: Image.network(
                                  "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                  width: 600,
                                  child: Image.network(
                                      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                                      fit: BoxFit.contain),
                                  margin: EdgeInsets.only(top: 20)),
                              Container(
                                  width: 600,
                                  child: Image.network(
                                      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                                      fit: BoxFit.contain),
                                  margin: EdgeInsets.only(top: 20)),
                            ],
                          )))
                ],
              ),
            ])));
  }
}
