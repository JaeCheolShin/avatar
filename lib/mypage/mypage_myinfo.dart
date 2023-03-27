import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:avatar3_flutter/mypage/mypage_setting.dart';
import 'package:flutter/material.dart';

import '../mypage/mypage_recentproduct.dart';
import '../mypage/mypage_servicecenter.dart';
import '../setting/color.dart';
import '../setting/setting_item.dart';
import '../setting/user_preferences.dart';

class Myinfo extends StatefulWidget {
  const Myinfo({Key? key}) : super(key: key);

  @override
  _MyinfoState createState() => _MyinfoState();
}

class _MyinfoState extends State<Myinfo> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('개인 정보'),
      ),
      backgroundColor: appBgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
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
              title: "회원 정보 수정",
              leadingIcon: Icons.edit,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "취향 정보 수정",
              leadingIcon: Icons.thumb_up_alt_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "체형 정보 수정",
              leadingIcon: Icons.delivery_dining,
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
              title: "리뷰",
              leadingIcon: Icons.rate_review_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "쿠폰",
              leadingIcon: Icons.question_answer_outlined,
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
              title: "포인트",
              leadingIcon: Icons.star_border,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              }),
        ],
      ),
    );
  }
}
