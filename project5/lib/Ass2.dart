import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ass2 extends StatelessWidget {
  const Ass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container Image With Scroll",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 35, 13, 2),
        ),
        body: Container(
          height: double.infinity,
          color: Color.fromARGB(255, 163, 181, 199),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                width: 600,
                margin: EdgeInsets.all(30),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTOI-idOzAs7uF8Db1bAXs0bQaSkphJAyrS-Zdrowq5TDj2ctcoh6yIjePEFa9E3lc0mk&usqp=CAU",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 600,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIEbbm4ud3mMktDt0cHDlPNFSgNJbu49Q_xz1zfTVcmGz_IPEMl_ouIdqJI5GS7hIaf0&usqp=CAU",
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.all(30),
              ),
            ]),
          ),
        ));
  }
}
