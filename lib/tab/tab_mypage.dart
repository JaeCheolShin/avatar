import 'package:avatar3_flutter/models/model_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../setting/color.dart';
import '../setting/data.dart';
import '../setting/setting_item.dart';

class TabMypage extends StatefulWidget {
  const TabMypage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<TabMypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('내 정보'),
        ),
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/onebin.jpg", //추후에 profile["name"]!, 로 교체 물론 profile의 image도 바꿔야한다.
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  profile["name"]!,
                  style: const TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  profile["email"]!,
                  style: const TextStyle(
                    color: labelColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SettingItem(
              title: "구매 내역",
              leadingIcon: Icons.local_mall_outlined,
              leadingIconColor: blue,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "환불 내역",
              leadingIcon: Icons.favorite,
              leadingIconColor: red,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "업데이트",
              leadingIcon: Icons.dark_mode_outlined,
              leadingIconColor: purple,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "설정",
              leadingIcon: Icons.notifications_outlined,
              leadingIconColor: orange,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "FAQ",
              leadingIcon: Icons.privacy_tip_outlined,
              leadingIconColor: green,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "공지사항",
              leadingIcon: Icons.info,
              leadingIconColor: grey,
              onTap: () {}),
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
