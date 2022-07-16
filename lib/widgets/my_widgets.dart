import 'package:flutter/material.dart';
import 'package:portfolio_app/constance/app_constance.dart';

class MyWidget extends StatelessWidget {
  final String text;
  Color? color;
  double size = 16;
  MyWidget({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: MyText(
                color: color,
                text: text,
                size: size,
                fontWeight: FontWeight.bold,
              )),
        ),
        Opacity(
          opacity: 0.3,
          child: Divider(
            thickness: 2,
            color: secondColor,
            indent: 100,
            endIndent: 100,
          ),
        ),
        const MyBox(height: 10),
      ],
    );
  }
}
