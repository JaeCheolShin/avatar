import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  String icon;
  final double? width;
  ImageData(
    this.icon, {
    Key? key,
    this.width = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      width: width! / Get.mediaQuery.devicePixelRatio,
    );
  }
}

class IconsPath {
  static String get homeOn => 'assets/images/logo.png';
  static String get homeOOff => 'assets/images/logo1.png';
  static String get searchOn => 'assets/images/search1.png';
  static String get searchOff => 'assets/images/search.png';
  static String get closetOn => 'assets/images/closet.png';
  static String get closetOff => 'assets/images/closet1.png';
  static String get heartOn => 'assets/images/heart.png';
  static String get heartOff => 'assets/images/heart1.png';
  static String get informationon => 'assets/images/my.png';
  static String get informationoff => 'assets/images/my1.png';
  static String get etc => 'assets/images/etc.png';
}
