import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  double textSize = 24;
  Color? primeColor = Colors.grey[300];
  Color? secondColor = HexColor("#FE024F");
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            HexColor(
              "#1c1d24",
            ),
            HexColor(
              "#202329",
            ),
          ],
        ),
      ),
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
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(),
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
              _text("Wecome to my world".toUpperCase(), primeColor, 14,
                  FontWeight.normal, 0),
              _sizebox(20),
              SizedBox(
                width: 250,
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
              _sizebox(10),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [Container()],
                      )
                    ],
                  )
                ],
              )
            ]),
      ),
    );
  }
}
