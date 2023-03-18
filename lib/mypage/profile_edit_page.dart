import 'package:flutter/material.dart';

import '../setting/profile_widget.dart';
import '../setting/textfield_widget.dart';
import '../setting/user.dart';
import '../setting/user_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: const Text('내 정보'),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 20),
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: '이름',
                  text: user.name,
                  onChanged: (name) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: '이메일',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: '내 소개',
                  text: user.about,
                  maxLines: 5,
                  onChanged: (about) {},
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      );
}
