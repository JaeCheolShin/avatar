import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('상의'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 1.png',
                        fit: BoxFit
                            .contain, //추후에 이미지 아래 텍스트를 넣을거라면 boxfit.contain을 height:80, width:80으로 변경하기
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*const Text(
                        '헤어',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 2.png',
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*const Text(
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
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 3.png',
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*const Text(
                        '아우터',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 4.png',
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /* const Text(
                        '상의',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 5.png',
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /* const Text(
                        '하의',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/top 6.png',
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*  const Text(
                        '신발',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            /*  GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 80,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*  const Text(
                        '신발',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              child: Container(
                  color: Colors.grey.shade400,
                  width: 90,
                  height: 90,
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 80,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      /*  const Text(
                        '신발',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )*/
                    ],
                  )),
            ),*/
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
