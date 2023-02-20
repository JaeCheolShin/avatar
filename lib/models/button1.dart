import 'package:avatar3_flutter/screens/screen_login.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? bgColor;

  const Button1({
    Key? key,
    required this.bgColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 13),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
