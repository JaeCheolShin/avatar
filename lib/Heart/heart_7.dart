import 'package:flutter/material.dart';

class Heart7 extends StatefulWidget {
  const Heart7({Key? key}) : super(key: key);

  @override
  _HeartGridviewState createState() => _HeartGridviewState();
}

class _HeartGridviewState extends State<Heart7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<String>(
              // Data is the value this Draggable stores.
              data: 'red',
              feedback: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              child: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
