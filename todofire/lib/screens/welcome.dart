import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todofire/screens/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          // height: height * 10,
          width: width * 5,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 215, 183, 145),
              const Color.fromARGB(255, 113, 125, 205)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            // image: DecorationImage(
            //     image: NetworkImage(
            //         "https://www.shutterstock.com/image-vector/3d-paper-clipboard-task-management-600nw-2438070637.jpg"),
            //     fit: BoxFit.cover)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(950, 20)),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(
                          //"https://www.shutterstock.com/image-vector/do-list-concept-undone-checklist-260nw-1470518090.jpg"),
                          "https://t4.ftcdn.net/jpg/04/52/16/29/360_F_452162906_FjLw4deIWXY76kMrPLJVpa9hTP4qBg3X.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  //1
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 32),
                        height: height * 0.05,
                        width: width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 11, 9, 9))),
                        padding: EdgeInsets.only(top: 3),
                        child: Text("Login",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rakkas(
                              fontSize: 25,
                            ))),
                  ),
                  //cambo
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    height: height * 0.05,
                    width: width * 0.5,
                    // height: 45,
                    // width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 11, 9, 9))),
                    padding: EdgeInsets.only(top: 3),
                    child: Text("Singnup",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rakkas(
                          fontSize: 25,
                        )
                        //carattere  TextStyle(fontSize: 20, color: Colors.black)
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
