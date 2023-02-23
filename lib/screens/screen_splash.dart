import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/model_cart.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    bool isLogin = prefs.getBool('isLogin') ?? false;
    String uid = prefs.getString('uid') ?? '';
    cartProvider.fetchCartItemsOrCreate(uid);
    return isLogin;
  }

  void moveScreen() async {
    await checkLogin().then((isLogin) {
      if (isLogin) {
        Navigator.of(context).pushReplacementNamed('/index');
      } else {
        Navigator.of(context).pushReplacementNamed('/onboarding');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Center(
          child: Image.asset(
            'assets/images/from avatar removebg.png',
          ),
        ));
  }
}
