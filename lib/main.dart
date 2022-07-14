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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                const Text(
                  "Resume",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download_rounded,
                  ),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Container(),
      ),
    );
  }
}
//  Text(
//               "Jay Isampelliwar",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: HexColor("#FE024F"),
//                 fontSize: 55,
//                 shadows: [
//                   Shadow(
//                     offset: const Offset(0, 0),
//                     color: HexColor("#FE024F").withOpacity(0.5),
//                     blurRadius: 20,
//                   ),
//                   Shadow(
//                     offset: const Offset(0, 0),
//                     color: HexColor("#FE024F").withOpacity(0.5),
//                     blurRadius: 20,
//                   )
//                 ],
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
