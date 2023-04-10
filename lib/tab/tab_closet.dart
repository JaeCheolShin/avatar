import 'package:avatar3_flutter/closet/closet_Accessories.dart';
import 'package:avatar3_flutter/closet/closet_Bottom.dart';
import 'package:avatar3_flutter/closet/closet_Outer.dart';
import 'package:avatar3_flutter/closet/closet_Hair.dart';
import 'package:avatar3_flutter/closet/closet_Shoes.dart';
import 'package:avatar3_flutter/closet/closet_Top.dart';
import 'package:flutter/material.dart';

class TabCloset extends StatefulWidget {
  const TabCloset({Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<TabCloset> {
  final bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              '옷 고르기',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black), //menu 색상
          centerTitle: true,
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
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/hair.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '헤어',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
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
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/accessorie.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '모자/안경',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      '악세서리',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
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
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/outer.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '아우터',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TopScreen()),
              );
            },
            child: Container(
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/top.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '상의',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
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
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pants.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '하의',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
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
                color: Colors.grey.shade300,
                width: 90,
                height: 90,
                margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/shoes.png',
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '신발',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
          ),
        ]));
  }
}
