import 'package:flutter/material.dart';

class Ass2 extends StatelessWidget {
  const Ass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "James Gosling",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(230, 185, 0, 0),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 157, 127, 163),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 350,
              child: Image.network(
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.only(top: 20),
              width: 350,
              child: Text(
                "James Gosling OC (born 19 May 1955) is a Canadian computer scientist, best known as the founder and lead designer behind the Java programming language.[3]"
                "Gosling was elected a member of the National Academy of Engineering in 2004 for the conception and development of the architecture for the Java programming language and for contributions to window systems.",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
