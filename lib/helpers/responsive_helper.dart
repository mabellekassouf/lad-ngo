import 'package:flutter/material.dart';
class ResponsiveHelper extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const ResponsiveHelper({Key? key, required this.mobile, required this.web}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<768){
        return mobile;
      }
      else{
        return web;
      }
    });
  }
}
