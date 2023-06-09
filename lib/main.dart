import 'package:avatar3_flutter/screens/screen_index.dart';
import 'package:avatar3_flutter/screens/screen_onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'models/model_cart.dart';
import 'screens/screen_search.dart';
import 'models/model_auth.dart';
import 'models/model_item_provider.dart';
import 'models/model_query.dart';
import 'screens/screen_detail.dart';
import 'screens/screen_splash.dart';
import 'screens/screen_login.dart';
import 'screens/screen_register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform); //파이어베이스
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
        ChangeNotifierProvider(create: (_) => ItemProvider()),
        ChangeNotifierProvider(create: (_) => QueryProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: GetMaterialApp(
        title: 'TAARA', //이 앱의 주제 title
        routes: {
          //루트 지정하는곳
          '/index': (context) => const IndexScreen(),
          '/login': (context) => const LoginScreen(),
          '/splash': (context) => const SplashScreen(),
          '/register': (context) => const RegisterScreen(),
          '/detail': (context) => DetailScreen(),
          '/search': (context) => const SearchScreen(),
          '/AppGuide': (context) => const AppGuideScreen(),
        },
        initialRoute: '/splash', //처음 시작되는 곳 지정
        debugShowCheckedModeBanner: false, //앱의 디버그표시
        darkTheme: ThemeData.light(), //dark로 바꾸면 다크모드 활성화 (불안정함)
      ),
    );
  }
}
