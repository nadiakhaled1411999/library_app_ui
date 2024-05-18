

// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:library_app/view/screen/home_screen.dart';
import 'package:lottie/lottie.dart';

class Splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      duration: 7000,
      splash: Lottie.asset( "assets/image/stack3.jpg"),
      nextScreen:   HomeScreen(),
      splashIconSize: 280,
      splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors. white
    );
  }
}

