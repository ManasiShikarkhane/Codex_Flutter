import 'package:flutter/material.dart';

class Ass1 extends StatelessWidget {
  const Ass1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Container",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(230, 79, 26, 0),
        ),
        body: Center(
            child: Container(
                color: Color.fromARGB(255, 106, 121, 142),
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 400,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(230, 205, 132, 6),
                              width: 35),
                          //  boxShadow: [BoxShadow()]
                        ),
                        child: Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(230, 133, 44, 0),
                                width: 45),
                          ),
                          child: Container(
                            height: 200,
                            width: 200,
                            //margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        )),
                  ],
                ))));
  }
}
