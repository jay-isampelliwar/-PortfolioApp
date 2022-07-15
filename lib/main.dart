import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
  double textSize = 24;

  Color? primeColor = Colors.grey[300];

  Color? secondColor = HexColor("#FE024F");

  Color? bgColor = HexColor("#12141f");

  Color? bgDrawerColor = HexColor("#171a2e");

  Widget _sizebox(int height) {
    return SizedBox(
      height: height.toDouble(),
    );
  }

  Widget _text(String text, color, double size, fontWeight, double space,
      {aligment = TextAlign.left}) {
    return Text(
      text,
      textAlign: aligment,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
        letterSpacing: space,
      ),
    );
  }

  InlineSpan _textSpan(String text, color, double size, fontWeight) {
    return TextSpan(
      text: text,
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
          backgroundColor: HexColor(
            "#1c1d24",
          ),
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
                  )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Row(
              children: [
                _text("Resume".toUpperCase(), primeColor, 18, FontWeight.normal,
                    0),
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
                child: _text("Wecome to my world".toUpperCase(), primeColor, 14,
                    FontWeight.normal, 0),
              ),
              _sizebox(20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      _textSpan(
                        "I'm ".toUpperCase(),
                        primeColor,
                        textSize,
                        FontWeight.bold,
                      ),
                      _textSpan(
                        "Jay Isampelliwar \n".toUpperCase(),
                        secondColor,
                        textSize + 6,
                        FontWeight.bold,
                      ),
                      _textSpan(
                        "Flutter Developer.".toUpperCase(),
                        primeColor,
                        textSize,
                        FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
              _sizebox(10),
              Opacity(
                opacity: 0.3,
                child: Divider(
                  thickness: 2,
                  color: secondColor,
                ),
              ),
              _sizebox(20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: _text(
                    "About".toUpperCase(),
                    primeColor,
                    16,
                    FontWeight.bold,
                    0,
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: secondColor?.withOpacity(0.2),
                indent: 100,
                endIndent: 100,
              ),
              _sizebox(10),
              Center(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: _text(
                        "Seeking opportunities at an entny level position to contribute my skills in a challenging environment in a firm driven by technology."
                            .toUpperCase(),
                        primeColor,
                        14,
                        FontWeight.normal,
                        1,
                        aligment: TextAlign.center),
                  ),
                ),
              ),
              _sizebox(20),
              Center(
                child: _text(
                  "Skills".toUpperCase(),
                  primeColor,
                  16,
                  FontWeight.bold,
                  1,
                ),
              ),
              Divider(
                thickness: 2,
                color: secondColor?.withOpacity(0.2),
                indent: 100,
                endIndent: 100,
              ),
              _sizebox(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _skillCol("JAVA", 4, "java"),
                  _skillCol("FLUTTER", 3, "flutter"),
                  _skillCol("JavaScript".toUpperCase(), 2, "js"),
                  _skillCol("GitHub".toUpperCase(), 3, "github"),
                ],
              ),
              _sizebox(20),
              Center(
                child: _text(
                  "Education".toUpperCase(),
                  primeColor,
                  16,
                  FontWeight.bold,
                  1,
                ),
              ),
              Divider(
                thickness: 2,
                color: secondColor?.withOpacity(0.2),
                indent: 100,
                endIndent: 100,
              ),
              _sizebox(20),
            ]),
      ),
    );
  }

  Column _skillCol(skill, int stars, asset) {
    const int totalStars = 5;
    int unstars = totalStars - stars;
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
        _sizebox(10),
        _text(skill, primeColor, 14, FontWeight.bold, 0),
        _sizebox(5),
        Row(
          children: _getAllStars(stars, unstars),
        ),
      ],
    );
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
}
