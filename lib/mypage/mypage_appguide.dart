import 'package:flutter/material.dart';

class AppGuide extends StatelessWidget {
  const AppGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          '앱 사용 가이드',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
