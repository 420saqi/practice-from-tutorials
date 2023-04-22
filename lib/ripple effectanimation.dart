import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {return MaterialApp(
    home: Rippleanimation(),
  );}
}
class Rippleanimation extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> RippleState();
}

class RippleState extends State<StatefulWidget>
{

var customOpacity1 =1.0;
var customOpacity2 =1.0;
var customOpacity3 =1.0;
var customOpacity4 =1.0;
var customOpacity5 =1.0;

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedOpacity(
              opacity: customOpacity1,
              duration: Duration(seconds: 1),
              child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(150)
              ),
          ),
            ),
            Positioned(
              left: 25,
              top: 25,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(125)
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: customOpacity3,
              duration: Duration(seconds: 1),
              child: Positioned(
                left: 50,
                top: 50,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(100)
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: customOpacity4,
              duration: Duration(seconds: 1),
              child: Positioned(
                left: 75,
                top: 75,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(75)
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: customOpacity5,
              duration: Duration(seconds: 1),
              child: Positioned(
                left: 100,
                top: 100,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ),

          ]
        ),
      ),
    );
  }
}