import 'package:flutter/material.dart';

class fd extends StatelessWidget {
  const fd({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu Example2',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Menu Example2'),
            centerTitle: true,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          ),
          drawer: const Drawer(),
        ));
  }
}
