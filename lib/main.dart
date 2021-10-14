import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:paws_app/screens.dart/home_screen.dart';
import 'package:paws_app/screens.dart/intro_screen.dart';
import 'package:paws_app/utilities/map.dart';
import 'screens.dart/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        curve: Curves.easeInCirc,
        splashIconSize: 150,
        centered: true,
        duration: 2500,
        splashTransition: SplashTransition.fadeTransition,
        splash: 'images/Asset 1.png',
        nextScreen: SetLocation(),
      ),
    );
  }
}
