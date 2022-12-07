import 'package:demo/responsive/dimension.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
final Widget mobileBody;
final Widget desktopBody;
Responsive({required this.mobileBody, required this.desktopBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < mobileWidth){
            return mobileBody;
          }else{
            return desktopBody;
          }
        }
    );
  }
}
