import 'package:flutter/material.dart';

class TabAvatar extends StatelessWidget {
  const TabAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Image.asset('assets/images/avatar-removebg.png'),
      ),
    ));
  }
}
