import 'package:flutter/material.dart';
import 'package:flutter_drag_target_demo/drag_box.dart';


class DragTargetDemo extends StatefulWidget {
  const DragTargetDemo({Key? key}) : super(key: key);

  @override
  _DragTargetDemoState createState() => _DragTargetDemoState();
}

class _DragTargetDemoState extends State<DragTargetDemo> {
  Color caughtColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter DragTarget Demo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            const DragBox(
              Offset(30.0, 0.0),
              'Drag This',
              Colors.orange,
            ),
            const DragBox(
              Offset(250.0, 0.0),
              'Drag This',
              Colors.cyan,
            ),
            Positioned(
              left: 100.0,
              bottom: 100.0,
              child: DragTarget(
                onAccept: (Color color) {
                  caughtColor = color;
                },
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.0),
                      color:
                          accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                    ),
                    child: const Center(
                      child: Text("You can drag here!"),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
