import 'package:avatar3_flutter/mypage/mypage_appguide.dart';
import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:avatar3_flutter/mypage/mypage_setting.dart';
import 'package:avatar3_flutter/mypage/profile_edit_page.dart';
import 'package:flutter/material.dart';

import '../mypage/mypage_delivery.dart';
import '../mypage/mypage_myinfo.dart';
import '../mypage/mypage_recentproduct.dart';
import '../mypage/mypage_servicecenter.dart';
import '../setting/color.dart';
import '../setting/profile_widget.dart';
import '../setting/setting_item.dart';
import '../setting/user.dart';
import '../setting/user_preferences.dart';

class TabMypage extends StatefulWidget {
  const TabMypage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

bool _isChecked = false;

class _AccountPageState extends State<TabMypage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.2, //menu 바 폭
        height: MediaQuery.of(context).size.height * 0.7, //menu 바 높이
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(height: 50),
              Draggable<String>(
                childWhenDragging: Container(), //드래그했을때 잔상이 남지 않게 함.
                // Data is the value this Draggable stores.
                data: '1',
                feedback: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/hair 10.png'),
                  ),
                ),
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/hair 10.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Draggable<String>(
                childWhenDragging: Container(),
                // Data is the value this Draggable stores.
                data: '2',
                feedback: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/top 10.png'),
                  ),
                ),
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/top 10.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Draggable<String>(
                childWhenDragging: Container(),
                // Data is the value this Draggable stores.
                data: '3',
                feedback: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/outer 3.png'),
                  ),
                ),
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/outer 3.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Draggable<String>(
                childWhenDragging: Container(),
                // Data is the value this Draggable stores.
                data: '4',
                feedback: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/bottom 10.png'),
                  ),
                ),
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/bottom 10.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Draggable<String>(
                // Data is the value this Draggable stores.
                data: '5',
                feedback: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/shoes 4.png'),
                  ),
                ),
                childWhenDragging: Container(),
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  child: Center(
                    child: Image.asset('assets/images/shoes 4.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          '마이 페이지',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black), //menu 색상
      ),
      backgroundColor: appBgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                  border: Border.all(color: Colors.grey, width: 2)),
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
                    child: ProfileWidget(
                      imagePath: user.imagePath,
                      onClicked: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const EditProfilePage()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 40, 10, 40),
                    child: buildName(user),
                  ),
                ],
              ),
            ),
          ),
          /*const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),*/
          const SizedBox(height: 10),
          buildBody(),
        ],
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          SettingItem(
              title: "개인 정보",
              leadingIcon: Icons.person_pin,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Myinfo()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "최근 본 상품",
              leadingIcon: Icons.query_builder_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RecentProduct()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "주문 배송",
              leadingIcon: Icons.delivery_dining,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Delivery()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "장바구니",
              leadingIcon: Icons.shopping_cart,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "고객센터",
              leadingIcon: Icons.headphones,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ServiceCenter()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "설정",
              leadingIcon: Icons.settings,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "앱 사용 가이드",
              leadingIcon: Icons.menu_book_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AppGuide()),
                );
              }),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );
}
