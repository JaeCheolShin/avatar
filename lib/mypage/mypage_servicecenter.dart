import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:flutter/material.dart';

import '../mypage/mypage_recentproduct.dart';
import '../setting/color.dart';
import '../setting/setting_item.dart';
import '../setting/user_preferences.dart';

class ServiceCenter extends StatefulWidget {
  const ServiceCenter({Key? key}) : super(key: key);

  @override
  _ServiceCenterState createState() => _ServiceCenterState();
}

class _ServiceCenterState extends State<ServiceCenter> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Center(child: Text('고객 센터')),
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
              title: "FAQ",
              leadingIcon: Icons.person_pin,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "공지 사항",
              leadingIcon: Icons.settings_backup_restore_rounded,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "문의하기",
              leadingIcon: Icons.delivery_dining,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RecentProduct()),
                );
              }),
        ],
      ),
    );
  }
}
