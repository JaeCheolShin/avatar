import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

   @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          '상품 배송',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}