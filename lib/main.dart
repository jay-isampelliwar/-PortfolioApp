import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/widgets/education.dart';
import 'package:portfolio_app/widgets/inline_span.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  InlineSpanText inlineSpanText = InlineSpanText();
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
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
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/profile.jpeg",
                  ),
                ),
              ),
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              splashColor: Colors.white.withOpacity(0.1),
              splashRadius: 10,
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: primeColor,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
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
                      inlineSpanText.textSpan(
                        "I'm ",
                        primeColor,
                        textSize,
                        FontWeight.bold,
                      ),
                      inlineSpanText.textSpan(
                        "John Stamos \n",
                        secondColor,
                        textSize + 6,
                        FontWeight.bold,
                      ),
                      inlineSpanText.textSpan(
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
              const MyBox(height: 10),
              Center(
                child: SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: MyText(
                        aligment: TextAlign.center,
                        text:
                            "Seeking opportunities at an entny level position to contribute my skills in a challenging environment in a firm driven by technology.",
                        color: primeColor,
                        size: 16,
                      )),
                ),
              ),
              const MyBox(height: 20),
              MyWidget(color: primeColor, text: "Skills"),
              const MyBox(height: 10),
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
              const MyBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Education(
                  schoolName: "Computer Science Engineering \n",
                  timePeriod: "2020 - Current",
                  degree: "B.tech",
                  current: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Education(
                  schoolName: "Computer Science Engineering \n",
                  timePeriod: "2018 - 2020",
                  degree: "Diploma",
                ),
              ),
              const MyBox(height: 10),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  if (details.delta.dy < 0) {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return showButtomSheet(bgDrawerColor);
                        });
                  }
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Column(children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Lottie.asset("assets/lottie/swipeup.json"),
                    ),
                    const MyBox(height: 10),
                    MyText(
                      text: "Projects",
                      color: primeColor,
                      size: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ]),
                ),
              ),
            ]),
      ),
    );
  }
}

Widget showButtomSheet(Color? bgDrawerColor) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: bgDrawerColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Column(children: [
      MyText(
        text: "Tap to visit Github",
        color: primeColor,
        size: 20,
        fontWeight: FontWeight.w800,
        space: 1.2,
      ),
      const MyBox(
        height: 30,
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectBlock(projectName: "Snake game"),
              ProjectBlock(projectName: 'Bmi App'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectBlock(projectName: "Tic toc toe"),
              ProjectBlock(projectName: "Portfolio App"),
            ],
          ),
        ],
      ),
      const MyBox(height: 50),
      GestureDetector(
        onTap: () {},
        child: Center(
            child: SizedBox(
          height: 100,
          width: 100,
          child: Lottie.asset("assets/lottie/github.json"),
        )),
      )
    ]),
  );
}
