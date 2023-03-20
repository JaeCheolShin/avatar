import 'dart:math';

import 'package:flutter/material.dart';

class qq extends StatefulWidget {
  const qq({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<qq> {
  var list;
  var random;
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  bool _isChecked = false;
  //초기에 값을 랜덤에 넣어줌.
  @override
  void initState() {
    super.initState();
    random = Random();
    refreshList();
  }

  //async wait 을 쓰기 위해서는 Future 타입을 이용함
  Future<void> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(const Duration(seconds: 0)); //thread sleep 같은 역할을 함.
    //새로운 정보를 그려내는 곳
    setState(() {
      list = List.generate(random.nextInt(100), (i) => "Item $i");
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Test"),
          leading: Switch(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
            activeColor: Colors.red,
          )),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: refreshList,
        child: ListView.builder(
          itemCount: list?.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(list[i]),
          ),
        ),
      ),
    );
  }
}
