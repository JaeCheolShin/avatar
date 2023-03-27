import 'dart:math';

import 'package:flutter/material.dart';

import '../Heart/heart_1.dart';
import '../Heart/heart_2.dart';
import '../Heart/heart_3.dart';
import '../Heart/heart_4.dart';
import '../Heart/heart_5.dart';
import '../Heart/heart_6.dart';
import '../Heart/heart_7.dart';
import '../Heart/heart_8.dart';
import '12.dart';

class TBS extends StatelessWidget {
  const TBS({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(title: const Text('Menu Example2'), centerTitle: true),
          body: Column(
            children: [
              const TabBar(
                  indicatorColor: Colors.red, //탭바 선택된 밑줄
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      text: 'List',
                      height: 50,
                    ),
                    Tab(
                      text: 'Grid',
                      height: 50,
                    ),
                    Tab(
                      text: 'Box',
                      height: 50,
                    ),
                  ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.builder(
                    key: const PageStorageKey("LIST_VIEW"),
                    itemCount: 1000,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "List View $index",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.accents[index % 15],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
                GridView.builder(
                    key: const PageStorageKey("GRID_VIEW"),
                    itemCount: 1000,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: ((context, index) {
                      List<int> number = [
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255)
                      ];
                      return Container(
                        color:
                            Color.fromRGBO(number[0], number[1], number[2], 1),
                        child: Center(
                            child: Text(
                          "Grid View $index",
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      );
                    })),
                GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Heart1()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart2()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart3()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart4()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart5()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart6()),
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
                          MaterialPageRoute(
                              builder: (context) => const Heart7()),
                        );
                      },
                      child: Container(
                          color: Colors.grey.shade300,
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 90,
                            width: 80,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Heart8()),
                        );
                      },
                      child: Container(
                          color: Colors.grey.shade300,
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 90,
                            width: 80,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TBS()),
                        );
                      },
                      child: Container(
                          color: Colors.grey.shade300,
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 90,
                            width: 80,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const cc()),
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
                            margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: Image.asset(
                              'assets/images/logo.png',
                              height: 90,
                              width: 80,
                            )),
                      ),
                    ),
                  ],
                )
              ]))
            ],
          )),
    );
  }
}
