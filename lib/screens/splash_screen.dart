import 'package:flutter/material.dart';
import '../constants/color.dart';
import 'quiz_screen.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  void navigate() {}

  Widget customElevatedButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(MainScreen.routeName),
      child: Container(
        height: 38,
        width: 150,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.chevron_right, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/question_bg2.png'),
          const SizedBox(height: 20),
          customElevatedButton(context),
        ],
      ),
    );
  }
}
