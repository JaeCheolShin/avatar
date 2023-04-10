import 'package:avatar3_flutter/Heart/0.dart';
import 'package:flutter/material.dart';

import '../Heart/000.dart';
import '../Heart/0000.dart';
import '../Heart/01.dart';
import '../Heart/heart_1.dart';
import '../Heart/heart_2.dart';
import '../Heart/heart_3.dart';
import '../Heart/heart_4.dart';
import '../Heart/heart_5.dart';
import '../Heart/heart_6.dart';

class TabHeart extends StatefulWidget {
  const TabHeart({super.key});

  @override
  State<TabHeart> createState() => _TabHeartState();
}

class _TabHeartState extends State<TabHeart> {
  final bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.2, //menu 바 폭
          height: MediaQuery.of(context).size.height * 0.7, //menu 바 높이
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const SizedBox(height: 50),
                Draggable<String>(
                  childWhenDragging: Container(), //드래그했을때 잔상이 남지 않게 함.
                  // Data is the value this Draggable stores.
                  data: '1',
                  feedback: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/hair 10.png'),
                    ),
                  ),
                  child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/hair 10.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Draggable<String>(
                  childWhenDragging: Container(),
                  // Data is the value this Draggable stores.
                  data: '2',
                  feedback: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/top 10.png'),
                    ),
                  ),
                  child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/top 10.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Draggable<String>(
                  childWhenDragging: Container(),
                  // Data is the value this Draggable stores.
                  data: '3',
                  feedback: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/outer 3.png'),
                    ),
                  ),
                  child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/outer 3.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Draggable<String>(
                  childWhenDragging: Container(),
                  // Data is the value this Draggable stores.
                  data: '4',
                  feedback: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/bottom 10.png'),
                    ),
                  ),
                  child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/bottom 10.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Draggable<String>(
                  // Data is the value this Draggable stores.
                  data: '5',
                  feedback: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/shoes 4.png'),
                    ),
                  ),
                  childWhenDragging: Container(),
                  child: SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image.asset('assets/images/shoes 4.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black), //menu 색상
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              '찜',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          centerTitle: true,
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
                  MaterialPageRoute(builder: (context) => const GG()),
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
                  MaterialPageRoute(builder: (context) => const NN()),
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
                  MaterialPageRoute(
                      builder: (context) => const HH(
                            title: 'drag',
                          )),
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
                  MaterialPageRoute(builder: (context) => const DemoExample()),
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
