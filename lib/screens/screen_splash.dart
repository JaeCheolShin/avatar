import 'dart:async';

import 'package:avatar3_flutter/screens/screen_onboarding.dart';
import 'package:avatar3_flutter/setting/db.dart';
import 'package:avatar3_flutter/setting/spaceer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1400), () async {
      final SharedPreferences db = await prefs;
      var userId = db.getString("uid");
      if (userId != null) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const OnboardingScreen()));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                const OnboardingScreen())); //나중에 indexscreen으로 바꾸기
      }
    });

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            GestureDetector(
              onTap: () {},
              child: const Image(
                  height: 100,
                  width: 100,
                  image: AssetImage("assets/images/logo.png")),
            ),
            const Expanded(child: SizedBox()),
            Column(
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  "From",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontFamily: 'avatar1'),
                ),
                const Text(
                  textAlign: TextAlign.center,
                  "A v a t ar",
                  style: TextStyle(color: Colors.black54, fontSize: 24),
                ),
                const VerticalSpacer(height: 30),
                Container(
                  height: 4,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(4)),
                ),
                const VerticalSpacer(height: 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}
