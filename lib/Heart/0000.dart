import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DemoExample extends StatefulWidget {
  const DemoExample({Key? key}) : super(key: key);
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<DemoExample> {
  @override
  Widget build(BuildContext context) {
    bool isDropped = false;
    String color = "red";
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LongPressDraggable<String>(
            // Data is the value this Draggable stores.

            feedback: Material(
              child: Container(
                height: 170.0,
                width: 170.0,
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: const Center(
                  child: Text(
                    'Dragging',
                    textScaleFactor: 2,
                  ),
                ),
              ),
            ),
            childWhenDragging: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'I was here',
                  textScaleFactor: 2,
                ),
              ),
            ),
            child: Container(
              height: 150.0,
              width: 150.0,
              color: Colors.redAccent,
              child: const Center(
                child: Text(
                  'Drag me',
                  textScaleFactor: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          DragTarget<String>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                padding: const EdgeInsets.all(6),
                color: Colors.black,
                strokeWidth: 2,
                dashPattern: const [8],
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: isDropped ? Colors.redAccent : null,
                    child: Center(
                        child: Text(
                      !isDropped ? 'Drop here' : 'Dropped',
                      textScaleFactor: 2,
                    )),
                  ),
                ),
              );
            },
            onAccept: (data) {
              debugPrint('hi $data');
              setState(() {
                isDropped = true;
              });
              debugPrint('hi $isDropped');
            },
            onWillAccept: (data) {
              return data == color;
            },
          ),
        ],
      ),
    ));
  }
}
