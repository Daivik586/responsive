import 'package:demo/HomePage.dart';
import 'package:demo/LoginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(app1());
}


class app1 extends StatefulWidget {
  const app1({Key? key}) : super(key: key);

  @override
  State<app1> createState() => _app1State();
}

class _app1State extends State<app1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
