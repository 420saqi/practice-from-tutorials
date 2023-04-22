import 'package:flutter/material.dart';
import 'package:practice/screen2.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget{
  State<StatefulWidget> createState()=> _Screen1State();
}

class _Screen1State extends State<StatefulWidget>
{
  var value1= TextEditingController();




  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: value1,
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Screen2(value1.text.toString())));
            },
            child: Text('Click to send date to screen2'),)
        ],
      ),
    );
  }
}