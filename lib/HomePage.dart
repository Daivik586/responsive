import 'package:demo/Responsive.dart';
import 'package:demo/responsive/desktop_body.dart';
import 'package:demo/responsive/mobile_body.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight =MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Responsive(desktopBody: DesktopBody(),mobileBody: MobileBody(),)
      ),
    );
  }
}
