import 'package:avatar3_flutter/setting/color.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';
import 'package:slidable_bar/slidable_bar.dart';

import '../avatar/makeavatar.dart';

class NN extends StatefulWidget {
  const NN({super.key});

  @override
  _NNState createState() => _NNState();
}

class _NNState extends State<NN> {
  final SlidableBarController controller =
      SlidableBarController(initialStatus: true);
  final bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat, //floatinactionbutton 위치조정
      floatingActionButton: SpeedDial(
        closedForegroundColor: Colors.white,
        openForegroundColor: Colors.white,
        closedBackgroundColor: grey,
        openBackgroundColor: grey,
        // labelsStyle: /* Your label TextStyle goes here */
        labelsBackgroundColor: Colors.white,
        //controller: /* Your custom animation controller goes here */,
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.share),
            foregroundColor: Colors.white,
            backgroundColor: grey,
            // label: 'Let\'s start a run!',
            onPressed: () {
              setState(() {
                //  _text = 'You pressed "Let\'s start a run!"';
              });
            },
            closeSpeedDialOnPressed: false,
          ),
          SpeedDialChild(
            child: const Icon(Icons.list),
            foregroundColor: Colors.white,
            backgroundColor: grey,
            // label: 'Let\'s go for a walk!',
            onPressed: () {
              setState(() {
                //_text = 'You pressed "Let\'s go for a walk!"';
              });
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.refresh),
            foregroundColor: Colors.white,
            backgroundColor: grey,
            // label: 'Let\'s go for a walk!',
            onPressed: () {
              setState(() {});
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.picture_in_picture_outlined),
            foregroundColor: Colors.white,
            backgroundColor: grey,
            onPressed: () {
              setState(() {});
            },
          ),
        ],
        child: const Icon(Icons.add),
      ),
      drawer: SizedBox(
        width: 10,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Draggable<String>(
                childWhenDragging: Container(), //드래그했을때 잔상이 남지 않게 함.
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
              ),
            ],
          ),
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
      ),
      body: SafeArea(
        child: Container(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/body.png',
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
