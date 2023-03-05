import 'package:avatar3_flutter/closet/closet_Accessories.dart';
import 'package:avatar3_flutter/closet/closet_Bottom.dart';
import 'package:avatar3_flutter/closet/closet_Outer.dart';
import 'package:avatar3_flutter/closet/closet_Hair.dart';
import 'package:avatar3_flutter/closet/closet_Shoes.dart';
import 'package:flutter/material.dart';

class TabCloset extends StatefulWidget {
  const TabCloset({Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<TabCloset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('목록'),
          ),
          body: GridView.count(crossAxisCount: 2, children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HairScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HairScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccessoriesScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OuterScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShoesScreen()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                  )),
            ),
          ])),
      debugShowCheckedModeBanner: false,
    );
  }
}
