import 'package:flutter/material.dart';

import '../bottom_nav/bottom_navigation.dart';
import '../bottom_nav/tab_item.dart';
import '../bottom_nav/tab_navigator.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  var _currentTab = TabItem.avatar;

  final _navigatorKeys = {
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.closet: GlobalKey<NavigatorState>(),
    TabItem.avatar: GlobalKey<NavigatorState>(),
    TabItem.heart: GlobalKey<NavigatorState>(),
    TabItem.mypage: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      /// 네비게이션 탭을 누르면, 해당 네비의 첫 스크린으로 이동!
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();

        if (isFirstRouteInCurrentTab) {
          // 메인 화면이 아닌 경우
          if (_currentTab != TabItem.avatar) {
            // 메인 화면으로 이동
            _selectTab(TabItem.avatar);
            // 앱 종료 방지
            return false;
          }
        }

        /// 네비게이션 바의 첫번째 스크린인 경우, 앱 종료
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.search),
            _buildOffstageNavigator(TabItem.closet),
            _buildOffstageNavigator(TabItem.avatar),
            _buildOffstageNavigator(TabItem.heart),
            _buildOffstageNavigator(TabItem.mypage),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    /// (offstage == false) -> 트리에서 완전히 제거된다.
    return Offstage(
        offstage: _currentTab != tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem],
          tabItem: tabItem,
        ));
  }
}
