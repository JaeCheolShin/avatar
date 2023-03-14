import 'package:flutter/material.dart';

class Buylist extends StatelessWidget {
  const Buylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          '구매 내역',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}