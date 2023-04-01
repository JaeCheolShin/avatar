import 'package:flutter/material.dart';
import 'package:slidable_bar/slidable_bar.dart';

import '../avatar/makeavatar.dart';

class zxc extends StatefulWidget {
  const zxc({super.key});

  @override
  _zxcState createState() => _zxcState();
}

class _zxcState extends State<zxc> {
  final SlidableBarController controller =
      SlidableBarController(initialStatus: true);
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {}  ,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          '테스트 페이지',
          style: TextStyle(color: Colors.black, fontSize: 20),
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
      body: Container(
        child: SlidableBar(
          size: 60,
          slidableController: controller,
          side: Side.right, //위치
          clicker: Container(
            color: Colors.white,
            width: 10,
            height: 30,
          ),
          barChildren: [
            const SizedBox(height: 30),
            Image.asset('assets/images/hair 4.png'),
            const SizedBox(height: 20),
            Image.asset('assets/images/outer 1.png'),
            const SizedBox(height: 20),
            Image.asset('assets/images/top 1.png'),
            const SizedBox(height: 20),
            Image.asset('assets/images/bottom 1.png'),
            const SizedBox(height: 20),
            Image.asset('assets/images/shoes 1.png'),
          ],
          child: Container(
            color: Colors.grey.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/avatar removebg.png',
                      width: 400,
                      height: 500,
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MakeAvatar()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      width: 250,
                      height: 50,
                      child: const Center(
                        child: Text(
                          '아바타 생성하기',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
