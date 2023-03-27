import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('최근 본 상품'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
