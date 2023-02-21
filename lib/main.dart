import 'package:avatar3_flutter/screens/screen_onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'models/model_cart.dart';
import 'screens/explain_screen.dart';
import 'screens/screen_search.dart';
import 'models/model_auth.dart';
import 'models/model_item_provider.dart';
import 'models/model_query.dart';
import 'screens/screen_detail.dart';
import 'screens/screen_splash.dart';
import 'screens/screen_index.dart';
import 'screens/screen_login.dart';
import 'screens/screen_register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      child: MaterialApp(
        title: 'Flutter Shopping mall',
        routes: {
          '/index': (context) => const IndexScreen(),
          '/login': (context) => const LoginScreen(),
          '/splash': (context) => const SplashScreen(),
          '/register': (context) => const RegisterScreen(),
          '/detail': (context) => DetailScreen(),
          '/search': (context) => const SearchScreen(),
          '/explain': (context) => const explainscreen(),
          '/onboarding': (context) => const OnboardingScreen(),
        },
        initialRoute: '/splash',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.light(),
      ),
    );
  }
}
