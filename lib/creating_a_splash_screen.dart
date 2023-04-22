import 'dart:async';

import 'package:flutter/material.dart';

import 'creating custom widet.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> _SplashScreenState();
}

class _SplashScreenState extends State<StatefulWidget>
{
  @override
  void initState() {
Timer(Duration(seconds: 4), () {
  Navigator.pushReplacement(context, MaterialPageRoute(
    builder: (context)=> MyHomePage(title: 'Creating Splash Screen',)
  ),);
});
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.green,
        width: double.infinity,
        height: double.infinity,
        child: Image.asset('assets/download.jpg'),
      ),
    );
  }
}

