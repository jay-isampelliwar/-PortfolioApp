import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/inline_span.dart';

import '../constance/app_constance.dart';

class Education extends StatelessWidget {
  String schoolName;
  String timePeriod;
  String degree;
  bool current;
  Education({
    required this.degree,
    required this.schoolName,
    required this.timePeriod,
    this.current = false,
  });

  InlineSpanText inlineSpanText = InlineSpanText();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          text: current ? "* $degree" : "  $degree",
          color: primeColor,
          size: 16,
          fontWeight: FontWeight.bold,
        ),
        Card(
          color: bgColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  inlineSpanText.textSpan(
                    schoolName,
                    primeColor,
                    14,
                    FontWeight.normal,
                  ),
                  inlineSpanText.textSpan(
                    timePeriod,
                    secondColor,
                    14,
                    FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
