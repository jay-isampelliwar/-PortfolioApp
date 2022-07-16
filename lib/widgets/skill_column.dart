import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constance/app_constance.dart';

class SkillColumn extends StatelessWidget {
  String asset;
  int star;
  String skill;
  SkillColumn({required this.skill, required this.star, required this.asset});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: HexColor("#0e0e17"),
                offset: const Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: HexColor("#181c2e"),
                offset: const Offset(-4, -4),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
            color: bgColor,
          ),
          child: Center(
            child: Image.asset("assets/$asset.png"),
          ),
        ),
        const MyBox(height: 10),
        MyText(text: skill.toUpperCase(), color: primeColor, size: 14),
        const MyBox(height: 5),
        Row(
          children: _getAllStars(star, 5 - star),
        ),
      ],
    );
  }
}

List<Widget> _getAllStars(int star, int unstar) {
  List<Widget> allStars = [];

  allStars.addAll(_stars(star));
  allStars.addAll(_unstars(unstar));

  return allStars;
}

List<Widget> _stars(int star) {
  List<Widget> stars = [];

  for (int i = 1; i <= star; i++) {
    stars.add(_star(secondColor));
  }

  return stars;
}

List<Widget> _unstars(int unstar) {
  List<Widget> stars = [];

  for (int i = 1; i <= unstar; i++) {
    stars.add(_star(primeColor));
  }

  return stars;
}

Icon _star(color) {
  return Icon(
    Icons.star,
    size: 15,
    color: color,
  );
}
