import 'package:flutter/material.dart';

class aa extends StatelessWidget {
  const aa({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyDemo(),
    );
  }
}

class MyDemo extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: '아우터'),
    const Tab(text: '상의'),
    const Tab(text: '하의'),
    const Tab(text: '신발'),
    const Tab(text: '헤어'),
  ];

  MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return const Center(
              child: Text(
                '여기는  탭입니다~',
                style: TextStyle(fontSize: 36),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
