import 'package:avatar3_flutter/tab/tab_avatar.dart';
import 'package:avatar3_flutter/tab/tab_closet.dart';
import 'package:avatar3_flutter/tab/tab_heart.dart';
import 'package:avatar3_flutter/tab/tab_mypage.dart';
import 'package:avatar3_flutter/tab/tab_search.dart';
import 'package:flutter/material.dart';

enum TabItem { search, closet, avatar, heart, mypage }

const Map<TabItem, String> tabName = {
  TabItem.search: 'search',
  TabItem.closet: 'closet',
  TabItem.avatar: 'avatar',
  TabItem.heart: 'heart',
  TabItem.mypage: 'mypage',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.search: Colors.grey,
  TabItem.closet: Colors.grey,
  TabItem.avatar: Colors.grey,
  TabItem.heart: Colors.grey,
  TabItem.mypage: Colors.grey,
};

const Map<TabItem, int> tabIdx = {
  TabItem.search: 0,
  TabItem.closet: 1,
  TabItem.avatar: 2,
  TabItem.heart: 3,
  TabItem.mypage: 4,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.search: const TabSearch(),
  TabItem.closet: const TabCloset(),
  TabItem.avatar: const TabAvatar(),
  TabItem.heart: const TabHeart(),
  TabItem.mypage: const TabMypage(),
};
