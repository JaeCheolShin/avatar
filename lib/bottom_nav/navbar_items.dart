import 'package:flutter/material.dart';

List<BottomNavigationBarItem> navbarItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
  const BottomNavigationBarItem(
      icon: Icon(Icons.door_sliding_outlined), label: 'closet'),
  BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/logo.png',
        width: 70,
        height: 54,
      ),
      label: ''),
  const BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border), label: 'heart'),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Page'),
];
