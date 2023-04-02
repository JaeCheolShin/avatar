import 'package:flutter/material.dart';

// MyPage
class Heart8 extends StatelessWidget {
  const Heart8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          backgroundColor: Colors.redAccent,
          elevation: 0,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 29,
          ),
        ),
        endDrawer: Drawer(
          //오른쪽
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Draggable(
                //This function should close the drawer
                onDragStarted: () {
                  Navigator.pop(context);
                },
                feedback: Container(
                  color: Colors.green,
                  width: 250,
                  height: 100,
                ),
                childWhenDragging: Container(
                  color: Colors.grey,
                  width: 250,
                  height: 100,
                ),
                child: Container(
                  color: Colors.red,
                  width: 250,
                  height: 100,
                ),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          title: const Text('Appbar icon menu'),
          centerTitle: true, // 중앙 정렬
          elevation: 0.0,
        ),
        drawer: Drawer(
          //왼쪽
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Draggable(
                //This function should close the drawer
                onDragStarted: () {
                  Navigator.pop(context);
                },
                feedback: Container(
                  color: Colors.green,
                  width: 250,
                  height: 100,
                ),
                childWhenDragging: Container(
                  color: Colors.grey,
                  width: 250,
                  height: 100,
                ),
                child: Container(
                  color: Colors.red,
                  width: 250,
                  height: 100,
                ),
              ),
            ),
          ]),
        ));
  }
}
