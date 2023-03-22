import 'dart:async';

import 'package:flutter/material.dart';

import 'Login.dart';
class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => SignInPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:Padding(
          padding: EdgeInsets.only(left: 40,right: 40),
          child: Image.asset("assets/logo.png"),
        ),
      ),
    );
  }
}
