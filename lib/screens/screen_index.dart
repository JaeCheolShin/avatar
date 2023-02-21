import 'package:flutter/material.dart';

import '../tabs/tab_avatar.dart';
import '../tabs/tab_closet.dart';
import '../tabs/tab_heart.dart';
import '../tabs/tab_mypage.dart';
import '../tabs/tab_search.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  _IndexScreenState createState() {
    return _IndexScreenState();
  }
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 2;

  final List<Widget> tabs = [
    TabSearch(),
    const TabCloset(),
    const TabAvatar(),
    TabHeart(),
    TabMyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(
          color: Colors.black, //색변경
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            if (index == 0) {
              setState(() {
                _currentIndex = 2;
              });
              Navigator.pushNamed(context, '/search');
            }
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'search'),
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
                icon: Icon(Icons.heart_broken_outlined), label: 'heart'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'My Page'),
          ],
        ),
      ),
      body: tabs[_currentIndex],
    );
  }
}
