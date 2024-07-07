import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ass4 extends StatelessWidget {
  const Ass4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row"),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(255, 245, 157, 150),
          child: SizedBox(
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 169, 28, 28),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 156, 0, 127),
                  )
                ],
              )),
        ));
  }
}
