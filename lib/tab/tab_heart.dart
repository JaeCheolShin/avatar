import 'package:flutter/material.dart';

import '../Heart/0.dart';
import '../Heart/heart_1.dart';
import '../Heart/heart_2.dart';
import '../Heart/heart_3.dart';
import '../Heart/heart_4.dart';
import '../Heart/heart_5.dart';
import '../Heart/heart_6.dart';
import '../Heart/heart_7.dart';
import '../Heart/heart_8.dart';
import '../Heart/heart_9.dart';

class TabHeart extends StatefulWidget {
  const TabHeart({super.key});

  @override
  State<TabHeart> createState() => _TabHeartState();
}

class _TabHeartState extends State<TabHeart> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              '옷장',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Switch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
              activeColor: Colors.black,
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Heart1()),
                );
              },
              child: Container(
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/1.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/2.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/3.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/4.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/5.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/6.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/7.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/8.png',
                    height: 90,
                    width: 80,
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
                  color: Colors.grey.shade300,
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/9.png',
                    height: 90,
                    width: 80,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const zxc()),
                );
              },
              child: Container(
                color: Colors.grey.shade300,
                width: 100,
                height: 100,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Container(
                    color: Colors.grey.shade300,
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/10.png',
                      width: 100,
                      height: 100,
                    )),
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
