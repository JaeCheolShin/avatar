import 'package:avatar3_flutter/tab/tab_avatar.dart';
import 'package:avatar3_flutter/tab/tab_closet.dart';
import 'package:avatar3_flutter/tab/tab_heart.dart';
import 'package:avatar3_flutter/tab/tab_mypage.dart';
import 'package:avatar3_flutter/tab/tab_search.dart';
import 'package:flutter/material.dart';

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
    const TabMypage(),
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
                icon: Icon(Icons.favorite_border), label: 'heart'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'My Page'),
          ],
        ),
      ),
      body: tabs[_currentIndex],
    );
  }
}
