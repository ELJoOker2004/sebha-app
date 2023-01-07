import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/view/home/screens/layout.dart';
import 'package:sebha_app2/view/home/screens/sebhascreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        centered: true,
        splashIconSize: double.infinity,
        backgroundColor: backgroundColor,
        splash:SvgPicture.asset('assets/icons/splash.svg'),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: LayoutScreen());
  }
}
