import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/quiz_screen.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
      },
    );
  }
}
