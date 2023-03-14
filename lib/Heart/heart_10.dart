import 'package:flutter/material.dart';

class Heart10 extends StatefulWidget {
  const Heart10({Key? key}) : super(key: key);

  @override
  _HeartGridviewState createState() => _HeartGridviewState();
}

class _HeartGridviewState extends State<Heart10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('찜한 코디'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 85,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('내 아바타'),
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('등록')),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(50), //모서리를 둥글게
                      border: Border.all(color: Colors.transparent, width: 3)),
                  width: 400,
                  height: 500,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 500,
                    width: 400,
                    fit: BoxFit.contain,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "(코디 이름을 적어주세요)",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
