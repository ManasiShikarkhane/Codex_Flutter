import 'package:flutter/material.dart';
import 'package:project8/Screen4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  final String name = "MANASI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen3: $name"),
      ),
      body: Center(
        child: InkWell(onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Screen4(
                        name: "SHRUTIKA",
                      )));
        }),
      ),
    );
  }
}
