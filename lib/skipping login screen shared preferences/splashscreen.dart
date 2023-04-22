import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practice/skipping%20login%20screen%20shared%20preferences/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homescreen.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen() ,
    );
  }
}

class splashScreen extends StatefulWidget
{
  State<StatefulWidget> createState()=> splashState();
}

class splashState extends State<StatefulWidget> {

   static const  String KEYNAME = 'login';

  @override
  void initState() {
    super.initState();
   wheretogo();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        body:Center(
          child: Container(
            width: 200,
            height: 200,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpg'),
            ),
          ),
        )
    );
  }

  void wheretogo() async{
    var prefs= await SharedPreferences.getInstance();
    var islogin= prefs.getBool(KEYNAME);

    Timer(Duration(seconds: 3),
            () {
      if(islogin!=null) {
       if(islogin) {
         Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context) => homeScreen()));
       }else
         {
           Navigator.pushReplacement(context,
               MaterialPageRoute(builder: (context) => LoginScreen()));

         }
      }
      else
      {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginScreen()));

      }

            });
  }
}