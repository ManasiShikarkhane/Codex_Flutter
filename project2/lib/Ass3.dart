import 'package:flutter/material.dart';

class Ass3 extends StatelessWidget {
  const Ass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ROW"),
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 171, 208),
          child: SizedBox(
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Color.fromARGB(255, 105, 2, 19)),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 0, 72, 49),
                )
              ],
            ),
          ),
        ));
  }
}
