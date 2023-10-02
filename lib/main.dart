import 'package:flutter/material.dart';
import 'package:marketfeedclone/view/splash_screen/splashscreen.dart';

void main() {
  runApp(Marketfeed());
}

class Marketfeed extends StatelessWidget {
  const Marketfeed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
