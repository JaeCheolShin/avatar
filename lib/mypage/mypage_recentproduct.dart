import 'package:flutter/material.dart';

class RecentProduct extends StatelessWidget {
  const RecentProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          '최근 본 상품',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
