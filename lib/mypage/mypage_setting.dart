import 'package:avatar3_flutter/avatar/12.dart';
import 'package:avatar3_flutter/mypage/mypage_buylist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/model_auth.dart';
import '../setting/color.dart';
import '../setting/setting_item.dart';
import '../setting/user.dart';
import '../setting/user_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
              title: "알림 설정",
              leadingIcon: Icons.query_builder_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const qq()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "다크 모드",
              leadingIcon: Icons.dark_mode_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
              title: "코디 추천 설정",
              leadingIcon: Icons.settings_backup_restore_rounded,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          SettingItem(
              title: "배송지 관리",
              leadingIcon: Icons.maps_home_work_outlined,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buylist()),
                );
              }),
          const SizedBox(height: 10),
          SettingItem(
            title: "로그아웃",
            leadingIcon: Icons.logout,
            leadingIconColor: Colors.grey,
            onTap: () {
              showConfirmLogout();
            },
          ),
          const SizedBox(height: 10),
          SettingItem(
              title: "회원 탈퇴",
              leadingIcon: Icons.markunread_mailbox_rounded,
              leadingIconColor: grey,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              }),
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

/*Widget buildUpgradeButton() => ButtonWidget(
      text: 'hehehe',
      onClicked: () {},
    );*/

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
