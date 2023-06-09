import 'package:avatar3_flutter/setting/color.dart';
import 'package:flutter/material.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';
import 'package:slidable_bar/slidable_bar.dart';

class GGG extends StatefulWidget {
  const GGG({super.key});

  @override
  _GGGState createState() => _GGGState();
}

class _GGGState extends State<GGG> {
  String? _targetImageUrl;
  final SlidableBarController controller =
      SlidableBarController(initialStatus: true);
  bool _isChecked = false;

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
                setState(() {
                  //_text = 'You pressed "Let\'s go for a walk!"';
                });
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.picture_in_picture_outlined),
              foregroundColor: Colors.white,
              backgroundColor: grey,
              // label: 'Let\'s go for a walk!',
              onPressed: () {
                setState(() {
                  //_text = 'You pressed "Let\'s go for a walk!"';
                });
              },
            ),
            //  Your other SpeedDialChildren go here.
          ],
          child: const Icon(Icons.add),
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
            color: Colors.grey,
            width: 10,
            height: 70,
          ),
          barChildren: [
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
            ),
          ],
          child: DragTarget<String>(
            onAccept: (value) {
              setState(() {
                _targetImageUrl = value;
              });
            },
            builder: (_, candidateData, rejectedData) {
              return Container( 
                width: 300,
                height: 200,
                color: Colors.amber,
                alignment: Alignment.center,
                child: _targetImageUrl != null
                    ? Image.network(
                        _targetImageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Container(),
              );
            },
          ),
        )));
  }
}
