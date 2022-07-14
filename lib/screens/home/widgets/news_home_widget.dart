import 'package:flutter/material.dart';
class HomeNewsWidget extends StatefulWidget {
  const HomeNewsWidget({Key? key}) : super(key: key);

  @override
  State<HomeNewsWidget> createState() => _HomeNewsWidgetState();
}

class _HomeNewsWidgetState extends State<HomeNewsWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height*0.8,
    );
  }
}
