import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/my_widgets.dart';
import 'package:portfolio_app/widgets/skill_column.dart';

import 'constance/app_constance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  InlineSpan _textSpan(String text, color, double size, fontWeight) {
    return TextSpan(
      text: text.toUpperCase(),
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size.toDouble(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: bgDrawerColor,
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundColor: secondColor,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              children: [
                MyText(
                  text: "Resume",
                  color: primeColor,
                  size: 16,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download_rounded,
                    color: primeColor,
                  ),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: ListView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MyText(
                    color: primeColor,
                    text: "Welcome to my world",
                    size: 14,
                  )),
              const MyBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      _textSpan(
                        "I'm ",
                        primeColor,
                        textSize,
                        FontWeight.bold,
                      ),
                      _textSpan(
                        "John Stamos \n",
                        secondColor,
                        textSize + 6,
                        FontWeight.bold,
                      ),
                      _textSpan(
                        "Flutter Developer.",
                        primeColor,
                        textSize,
                        FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              const MyBox(height: 10),
              Opacity(
                opacity: 0.3,
                child: Divider(
                  thickness: 2,
                  color: secondColor,
                ),
              ),
              const MyBox(height: 20),
              MyWidget(color: primeColor, text: "About"),
              Center(
                child: SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: MyText(
                        aligment: TextAlign.center,
                        text:
                            "Seeking opportunities at an entny level position to contribute my skills in a challenging environment in a firm driven by technology.",
                        color: primeColor,
                        size: 14,
                      )),
                ),
              ),
              const MyBox(height: 20),
              MyWidget(color: primeColor, text: "Skills"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SkillColumn(skill: "Java", star: 4, asset: "java"),
                  SkillColumn(skill: "FLUTTER", star: 3, asset: "flutter"),
                  SkillColumn(skill: "JavaScript", star: 2, asset: "js"),
                  SkillColumn(skill: "GitHub", star: 3, asset: "github"),
                ],
              ),
              const MyBox(height: 20),
              MyWidget(color: primeColor, text: "Education"),
              const MyBox(height: 20),
            ]),
      ),
    );
  }
}
