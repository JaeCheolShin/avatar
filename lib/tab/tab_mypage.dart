import 'package:avatar3_flutter/mypage/mypage_appguide.dart';
import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:avatar3_flutter/mypage/mypage_setting.dart';
import 'package:avatar3_flutter/mypage/profile_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

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

class _AccountPageState extends State<TabMypage> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(0),
          child: Text(
            '마이 페이지',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LiteRollingSwitch(
              value: true,
              width: 80,
              textOn: 'on',
              textOff: 'off',
              colorOn: Colors.blueGrey,
              colorOff: Colors.deepPurple,
              iconOn: Icons.power_settings_new,
              iconOff: Icons.power_settings_new,
              animationDuration: const Duration(milliseconds: 300),
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
              onDoubleTap: () {},
              onSwipe: () {},
              onTap: () {},
            ),
          ),
        ],
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
