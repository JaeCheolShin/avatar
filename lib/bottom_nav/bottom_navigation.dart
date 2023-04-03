import 'package:avatar3_flutter/bottom_nav/tab_item.dart';
import 'package:flutter/material.dart';

import 'navbar_items.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override 
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      //selected된 item color
      selectedItemColor: Colors.black,
      //unselected된 item color
      unselectedItemColor: Colors.grey.shade600,
      //unselected된 label text
      showUnselectedLabels: false,
      //selected된 label text
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.search),
        _buildItem(TabItem.closet),
        _buildItem(TabItem.taara),
        _buildItem(TabItem.heart),
        _buildItem(TabItem.mypage),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return navbarItems[tabIdx[tabItem]!];
  }
}
