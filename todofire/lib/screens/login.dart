import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todofire/screens/categoryscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
            child: Container(
                width: width * 6,
                height: height * 8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://m.media-amazon.com/images/I/71Q5M3-VOwL._AC_UF1000,1000_QL80_.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Container(
                    height: height * 4,
                    width: width * 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Card(
                      elevation: 50,
                      margin: EdgeInsets.only(
                          top: 200, bottom: 200, right: 20, left: 20),
                      shadowColor:
                          const Color.fromARGB(255, 69, 0, 38).withOpacity(0.3),
                      color: Color.fromARGB(255, 45, 34, 34).withOpacity(0.3),
                      borderOnForeground: true,
                      child: Column(children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Text(
                          "Welcome Back!",
                          style: GoogleFonts.
                              //caladea
                              lacquer(
                                  fontSize: 40,
                                  color: Color.fromARGB(255, 238, 229, 229)),
                        ),
                        Form(
                            key: _formKey,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: "Email",
                                              labelStyle: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your email';
                                            }
                                            return null;
                                          },
                                        ), //email
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16),
                                        child: TextFormField(
                                          controller: passwordController,
                                          obscureText: true,
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: "Password",
                                              labelStyle: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your password';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),

                                      //passwordPadding(
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16.0),
                                        child: Container(
                                          margin: EdgeInsets.all(20),
                                          child: Center(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  // Navigate the user to the Home page
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                203, 129, 154),
                                                        content: Text(
                                                          'Please fill Credentials',
                                                          style: TextStyle(
                                                              fontSize: 15),
                                                        )),
                                                  );
                                                }
                                              },
                                              child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                CategoryList()));
                                                  },
                                                  child: const Text(
                                                    'Submit',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]))),
                      ]),
                    )))));
  }
}
