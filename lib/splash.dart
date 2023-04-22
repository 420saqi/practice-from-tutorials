import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/skipping%20login%20screen%20shared%20preferences/loginscreen.dart';

class Splash extends StatefulWidget
{
  State<StatefulWidget> createState()=> SplashState();
} 

class SplashState extends State<StatefulWidget>
{
  @override
  void initState() {

Timer(Duration(seconds: 3), () {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())
  );
});

  }
  Widget build(BuildContext context)
  {
    return MaterialApp(
      color: Colors.deepOrangeAccent,
      home: Material(
        child: Text('SPLASH SCREEN',style: TextStyle(
          // fontSize: 30,
          
          color: Colors.white
        ),)
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,

    );
  }
}