import 'package:flutter/material.dart';
import 'package:ui_revision2/screens/login_screen.dart';
import 'package:ui_revision2/screens/out_boarding_screen.dart';
import 'package:ui_revision2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen' : (context) => SplashScreen(),
        '/out_boarding_screen' : (context) => OutBoardingScreen(),
        '/login_screen' : (context) => LogInScreen(),
      },

    );
  }
}

