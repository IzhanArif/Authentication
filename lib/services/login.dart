// ignore_for_file: prefer_const_constructors

import 'package:authentication/services/authmethod.dart';
import 'package:authentication/services/success.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void loginUser() {
    FirebaseAuthMethod(FirebaseAuth.instance).loginWithEmail(
        email: emailcontroller.text, password: passwordcontroller.text);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SuccessPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LogIn",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: "Your Email Here",
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "Your Password Here",
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: loginUser, child: Text("LogIn"))
          ],
        ),
      ),
    );
  }
}
