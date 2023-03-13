import 'package:avatar3_flutter/avatar/%ED%94%84%EB%A1%9C%ED%95%84%20%EC%9E%84%EC%8B%9C1.dart';

import 'package:avatar3_flutter/models/model_auth.dart';
import 'package:avatar3_flutter/mypage/mypage_FAQ.dart';
import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:avatar3_flutter/mypage/mypage_notice.dart';
import 'package:avatar3_flutter/mypage/mypage_setting.dart';
import 'package:avatar3_flutter/mypage/mypage_update.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/button1.dart';
import '../setting/color.dart';
import '../setting/setting_item.dart';
import '../setting/user.dart';
import '../setting/user_preferences.dart';

class qqwweerr extends StatefulWidget {
  const qqwweerr({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<qqwweerr> {
  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('내 정보'),
      ),
      backgroundColor: appBgColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
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
              title: "프로필 관리",
              leadingIcon: Icons.tag_faces,
              leadingIconColor: blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const qqwwee()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "구매 내역",
              leadingIcon: Icons.local_mall_outlined,
              leadingIconColor: blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "업데이트",
              leadingIcon: Icons.dark_mode_outlined,
              leadingIconColor: purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Update()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "설정",
              leadingIcon: Icons.notifications_outlined,
              leadingIconColor: orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setting()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "FAQ",
              leadingIcon: Icons.privacy_tip_outlined,
              leadingIconColor: green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FAQ()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "공지사항",
              leadingIcon: Icons.info,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Notice()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
            title: "로그아웃",
            leadingIcon: Icons.logout_outlined,
            leadingIconColor: Colors.grey.shade400,
            onTap: () {
              showConfirmLogout();
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
            message: const Text("로그아웃하시겠습니까?"),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {},
                child: const Text(
                  "로그아웃",
                  style: TextStyle(color: actionColor),
                ),
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text("취소"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )));
  }
}

class LoginOutButton extends StatelessWidget {
  const LoginOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authClient =
        Provider.of<FirebaseAuthProvider>(context, listen: false);
    return TextButton(
        onPressed: () async {
          await authClient.logout();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('logout!')));
          Navigator.of(context).pushReplacementNamed('/login');
        },
        child: const Text('로그아웃'));
  }
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

Widget buildUpgradeButton() => ButtonWidget(
      text: 'hehehe',
      onClicked: () {},
    );

Widget buildAbout(User user) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            user.about,
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
