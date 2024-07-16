import 'package:flutter/material.dart';

class Ass6 extends StatelessWidget {
  const Ass6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration Image Scroll",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 130, 0, 56),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.shutterstock.com/image-photo/chocolate-cake-black-forest-cherries-260nw-1471987001.jpg"),
                    fit: BoxFit.cover),
                border: Border.all(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(180.0),
              ),
              margin: EdgeInsets.all(15),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.shutterstock.com/image-photo/chocolate-cake-black-forest-cherries-260nw-1471987001.jpg"),
                    fit: BoxFit.cover),
                border: Border.all(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(140.0),
              ),
              margin: EdgeInsets.all(15),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.shutterstock.com/image-photo/chocolate-cake-black-forest-cherries-260nw-1471987001.jpg"),
                    fit: BoxFit.cover),
                border: Border.all(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(140.0),
              ),
              margin: EdgeInsets.all(15),
            ),
          ]),
        ),
      ),
    );
  }
}
