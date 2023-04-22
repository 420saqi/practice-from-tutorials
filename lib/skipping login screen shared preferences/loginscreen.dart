// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../splash.dart';
import 'splashscreen.dart';


import 'homescreen.dart';

void main()=>runApp( MyApp());
class MyApp extends StatelessWidget
{
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Splash() ,
    );
  }
}

class LoginScreen extends StatefulWidget
{
  // const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState()=> _loginState();
}

class _loginState extends State<StatefulWidget>
{
  bool value=true;


  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage('assets/download.jpg'),
                radius: 30,
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    label: const Text('Enter Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 5,
                        )
                    )
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    label: const Text('Enter Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 5,
                        )
                    )
                ),
              ),
              const SizedBox(height: 10,),

              ElevatedButton(onPressed: ()async{

                var preps= await SharedPreferences.getInstance();
                 preps.setBool(splashState.KEYNAME, true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> homeScreen()));
              },

                style:ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ), child: const Text('Save'),



              ),
            ],
          ),
        ),
      ),
    );
  }
}