import 'package:flutter/material.dart';
import '../constants/color.dart';
import 'quiz_screen.dart';

class SplashScreen extends StatelessWidget {
  Widget customElevatedButton() {
    return Container(
      height:38,
      width:150,
      decoration: BoxDecoration(
           color:primaryColor,
           borderRadius: BorderRadius.circular(20),
      ),
      child:Wrap()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/question_bg2.png'),
          const SizedBox(height: 20),
          customElevatedButton(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            icon: const Icon(Icons.chevron_right),
            onPressed: () =>
                Navigator.of(context).pushNamed(MainScreen.routeName),
            label: const Text('Get Started'),
          )
        ],
      ),
    );
  }
}
