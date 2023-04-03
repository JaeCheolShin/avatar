import 'package:flutter/material.dart';

class mn extends StatefulWidget {
  const mn({super.key});

  @override
  mnClass createState() => mnClass();
}

class mnClass extends State {
  bool switchControl = false;
  var textHolder = '남성';

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = '여성';
      });
      print('여성');
      // Put your code here which you want to execute on Switch ON event.
    } else {
      setState(() {
        switchControl = false;
        textHolder = '남성';
      });
      print('남성');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 1.5,
          child: Switch(
            onChanged: toggleSwitch,
            value: switchControl,
            activeColor: Colors.blue,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey,
          )),
      Text(
        textHolder,
        style: const TextStyle(fontSize: 24),
      )
    ]);
  }
}
