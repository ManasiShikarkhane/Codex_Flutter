import 'package:flutter/material.dart';

class Ass2 extends StatelessWidget {
  const Ass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Row"),
            centerTitle: true,
            actions: [Icon(Icons.account_balance_rounded)],
            leading: Icon(Icons.ac_unit_rounded)),
        body: Container(
          height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 84, 22, 78),
              ),
              Container(
                height: 100,
                width: 100,
                color: Color.fromARGB(255, 0, 98, 115),
              )
            ],
          ),
        ));
  }
}
