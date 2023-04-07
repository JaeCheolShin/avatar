import 'package:flutter/material.dart';

class HH extends StatefulWidget {
  const HH({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HH> createState() => _HHState();
}

class _HHState extends State<HH> {
  int _indexOfDroppedItem = 0;
  bool _isDragging = false;

  void _acceptDraggedItem(int index) {
    setState(() {
      _indexOfDroppedItem = index;
    });
  }

  void _setIsDragging() {
    setState(() {
      _isDragging = true;
    });
  }

  void _resetIsDragging() {
    setState(() {
      _isDragging = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: index == _indexOfDroppedItem
                  ? Draggable<int>(
                      data: index,
                      childWhenDragging: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                      ),
                      onDragStarted: () {
                        _setIsDragging();
                      },
                      onDraggableCanceled: (_, __) {
                        _resetIsDragging();
                      },
                      onDragCompleted: () {
                        _resetIsDragging();
                      },
                      feedback: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      ),
                    )
                  : DragTarget<int>(
                      builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                      ) {
                        return Container(
                            decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(_isDragging
                              ? const Radius.circular(20)
                              : const Radius.circular(10)),
                        ));
                      },
                      onAccept: (int data) {
                        _acceptDraggedItem(index);
                      },
                    ),
            );
          }),
        ),
      ),
    );
  }
}
