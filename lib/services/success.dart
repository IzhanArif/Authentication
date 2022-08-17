// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Success"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "SIGNED AND LOGGED IN SUCCESSFULLY",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )
        ],
      )),
    );
  }
}
