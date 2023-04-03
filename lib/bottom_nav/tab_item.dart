
import 'package:avatar3_flutter/tab/tab_closet.dart';
import 'package:avatar3_flutter/tab/tab_heart.dart';
import 'package:avatar3_flutter/tab/tab_mypage.dart';
import 'package:avatar3_flutter/tab/tab_search.dart';
import 'package:flutter/material.dart';

import '../tab/tab_taara.dart';

enum TabItem { search, closet, taara, heart, mypage }

const Map<TabItem, String> tabName = {
  TabItem.search: 'search',
  TabItem.closet: 'closet',
  TabItem.taara: 'taara',
  TabItem.heart: 'heart',
  TabItem.mypage: 'mypage',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.search: Colors.grey,
  TabItem.closet: Colors.grey,
  TabItem.taara: Colors.grey,
  TabItem.heart: Colors.grey,
  TabItem.mypage: Colors.grey,
};

const Map<TabItem, int> tabIdx = {
  TabItem.search: 0,
  TabItem.closet: 1,
  TabItem.taara: 2,
  TabItem.heart: 3,
  TabItem.mypage: 4,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.search: const TabSearch(),
  TabItem.closet: const TabCloset(),
  TabItem.taara: const TabTaara(),
  TabItem.heart: const TabHeart(),
  TabItem.mypage: const TabMypage(),
};
