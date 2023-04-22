import 'package:flutter/material.dart';
import 'package:practice/skipping%20login%20screen%20shared%20preferences/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'splashscreen.dart';


class homeScreen extends StatefulWidget
{
  State<StatefulWidget> createState()=> _homeState();
}

class _homeState extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.green,
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpg'),
                 radius: 150,
              ),

              Text('THIS IS HOME-SCREEN', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),

              ElevatedButton(
                  onPressed:() async {
                    var pred= await SharedPreferences.getInstance();
                    pred.setBool(splashState.KEYNAME, false);
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>LoginScreen())
                    );
                  }
                  ,
               child:Text('logout'))
            ],
          ),
        )
    );
  }
}