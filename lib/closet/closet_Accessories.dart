import 'package:flutter/material.dart';

class AccessoriesScreen extends StatefulWidget {
  const AccessoriesScreen({Key? key}) : super(key: key);

  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<AccessoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('모자/안경/악세서리'),
          ),
          body: GridView.count(crossAxisCount: 2, children: <Widget>[
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
                    children: const [
                      /* Image.asset(
                        'assets/images/hair 1.png',
                        fit: BoxFit.contain,
                      ),*/
                      Text(
                        '옷 1',
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
                    children: const [
                      /* Image.asset(
                        'assets/images/hair 2.png',
                        fit: BoxFit.contain,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 2',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
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
                    children: const [
                      /* Image.asset(
                        'assets/images/hair 3.png',
                        fit: BoxFit.contain,
                      ), */
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 3',
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
                    children: const [
                      /* Image.asset(
                        'assets/images/hair 4.png',
                        fit: BoxFit.contain,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 4',
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
                    children: const [
                      /*Image.asset(
                        'assets/images/hair 5.png',
                        fit: BoxFit.contain,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 5',
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
                    children: const [
                      /* Image.asset(
                        'assets/images/hair 6.png',
                        fit: BoxFit.contain,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 6',
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
                    children: const [
                      /* Image.asset(
                        'assets/images/logo.png',
                        height: 80,
                        width: 80,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 7',
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
                    children: const [
                      /* Image.asset(
                        'assets/images/logo.png',
                        height: 80,
                        width: 80,
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '옷 8',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
            ),
          ])),
      debugShowCheckedModeBanner: false,
    );
  }
}
