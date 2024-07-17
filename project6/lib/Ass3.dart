import 'package:flutter/material.dart';

class Ass3 extends StatelessWidget {
  const Ass3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Netflix",
          style: TextStyle(
              color: const Color.fromARGB(255, 176, 12, 0),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(206, 196, 215, 1),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                //12fail
                width: 400,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Movies",
                  style: (TextStyle(fontSize: 25)),
                  //    textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                ),
              ),

              //Charlie777
              Container(
                width: 400,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Popular Content",
                  style: (TextStyle(fontSize: 25)),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.assettype.com/filmcompanion%2F2023-08%2F0f9d9a16-ecfb-4ac8-90e2-166dbd6a3458%2FFc6vQZiacAYVNLQ.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.assettype.com/filmcompanion%2F2023-08%2F0f9d9a16-ecfb-4ac8-90e2-166dbd6a3458%2FFc6vQZiacAYVNLQ.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.assettype.com/filmcompanion%2F2023-08%2F0f9d9a16-ecfb-4ac8-90e2-166dbd6a3458%2FFc6vQZiacAYVNLQ.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                ),
              ),
              //Puspha2
              Container(
                width: 400,
                child: Text(
                  "Movies",
                  style: (TextStyle(fontSize: 25)),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://static.theprint.in/wp-content/uploads/2023/09/ANI-20230911121744.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://static.theprint.in/wp-content/uploads/2023/09/ANI-20230911121744.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Image.network(
                        "https://static.theprint.in/wp-content/uploads/2023/09/ANI-20230911121744.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
