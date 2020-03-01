import 'package:flutter/material.dart';
import 'package:Cardly/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 8,
      navigateAfterSeconds: AddCard(),
      title: Text(
        'Cardly',
        style: TextStyle(
            fontFamily: 'Comforta',
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold),
      ),
      photoSize: 140,
      loadingText: Text(
        'Please Wait',
        style: TextStyle(fontFamily: 'Comforta', fontSize: 15),
      ),
      loaderColor: Colors.cyan,
      styleTextUnderTheLoader: TextStyle(color: Colors.black),
      image: Image.asset(
        'images/SplashScreenLogo.png',
      ),
    );
  }
}
