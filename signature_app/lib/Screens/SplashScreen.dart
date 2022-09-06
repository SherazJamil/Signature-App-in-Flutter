import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'HomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const Homescreen(),
      duration: 4000,
      imageSize: 130,
      imageSrc: "assets/Logo.png",
      text: "Signature Pad",
      textType: TextType.ScaleAnimatedText,
      textStyle: const TextStyle(
        color: Colors.white60,
        fontSize: 30.0,
      ),
      backgroundColor: const Color(0xFFFF6607),
    );
  }
}
