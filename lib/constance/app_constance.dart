import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

double textSize = 24;
Color? primeColor = Colors.grey[300];
Color? secondColor = HexColor("#29FFFA");
Color? bgColor = HexColor("#12141f");
Color? bgDrawerColor = HexColor("#1c1d24");

class MyBox extends StatelessWidget {
  final double height;
  const MyBox({required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class ProjectBlock extends StatelessWidget {
  String projectName;
  ProjectBlock({required this.projectName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        width: 100,
        child: Card(
          color: secondColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText(
                aligment: TextAlign.center,
                text: projectName,
                color: Colors.black,
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  final TextAlign aligment;
  final Color? color;
  final double size;
  final double space;
  final FontWeight fontWeight;

  const MyText({
    required this.text,
    this.aligment = TextAlign.left,
    required this.color,
    required this.size,
    this.space = 0,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      textAlign: aligment,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
        letterSpacing: space,
      ),
    );
  }
}
