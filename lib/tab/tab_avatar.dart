import 'package:flutter/material.dart';

import '../avatar/makeavatar.dart';

class TabAvatar extends StatefulWidget {
  const TabAvatar({super.key});

  @override
  State<TabAvatar> createState() => _TabAvatarState();
}

class _TabAvatarState extends State<TabAvatar> {
  bool _isChecked = false; //스위치의 온오프 상태

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
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
          'TAARA',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true, //앱바 글씨 가운데 정렬
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
      body: SizedBox(
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
                    MaterialPageRoute(builder: (context) => const MakeAvatar()),
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
    );
  }
}
