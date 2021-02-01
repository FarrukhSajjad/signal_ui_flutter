import 'dart:async';

import 'package:flutter/material.dart';
import 'package:signal_ui/constants.dart';
import 'package:signal_ui/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => Home())));
  }

  @override
  void dispose() {
    super.dispose();
    SplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/images/icon.png')),
      ),
    );
  }
}
