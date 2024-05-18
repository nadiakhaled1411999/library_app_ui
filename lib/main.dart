// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



import 'package:library_app/view/screen/home_screen.dart';
import 'package:library_app/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' library',

      home: HomeScreen(),
    );
  }
}



