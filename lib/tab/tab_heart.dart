import 'package:avatar3_flutter/Heart/heart_1.dart';
import 'package:avatar3_flutter/Heart/heart_10.dart';
import 'package:avatar3_flutter/Heart/heart_2.dart';
import 'package:avatar3_flutter/Heart/heart_3.dart';
import 'package:avatar3_flutter/Heart/heart_4.dart';
import 'package:avatar3_flutter/Heart/heart_5.dart';
import 'package:avatar3_flutter/Heart/heart_6.dart';
import 'package:avatar3_flutter/Heart/heart_7.dart';
import 'package:avatar3_flutter/Heart/heart_8.dart';
import 'package:avatar3_flutter/Heart/heart_9.dart';
import 'package:flutter/material.dart';

class TabHeart extends StatefulWidget {
  const TabHeart({Key? key}) : super(key: key);

  @override
  _HeartGridviewState createState() => _HeartGridviewState();
}

class _HeartGridviewState extends State<TabHeart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('찜한 코디'),
          ),
          body: GridView.count(crossAxisCount: 2, children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Heart1()),
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
                  MaterialPageRoute(builder: (context) => const Heart2()),
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
                  MaterialPageRoute(builder: (context) => const Heart3()),
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
                  MaterialPageRoute(builder: (context) => const Heart4()),
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
                  MaterialPageRoute(builder: (context) => const Heart5()),
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
                  MaterialPageRoute(builder: (context) => const Heart6()),
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
                  MaterialPageRoute(builder: (context) => const Heart7()),
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
                  MaterialPageRoute(builder: (context) => const Heart8()),
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
                  MaterialPageRoute(builder: (context) => const Heart9()),
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
                    MaterialPageRoute(builder: (context) => const Heart10()),
                  );
                },
                child: Container(
                  color: Colors.grey.shade400,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      color: Colors.grey.shade400,
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain, //해상도 문제는 나중에 고화질 사진으로 바꿔주면 됨.
                      )),
                )),
          ])),
      debugShowCheckedModeBanner: false,
    );
  }
}
