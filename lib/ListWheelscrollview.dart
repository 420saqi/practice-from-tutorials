import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {    return MaterialApp(
      home: listwheel(),
    );
  }
}
class listwheel extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => listwheelState();
}

class listwheelState extends State<StatefulWidget>
{
  var arr= [1,2,3,4,5,6,7,8];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Center(
        child: ListWheelScrollView(
          itemExtent: 200,

           children: arr.map((e) => Image.asset('assets/download.jpg')
           ).toList(),

        ),
      )
    );
  }
}


//           METHOD ! for ListWheelScrollView
//
//
// ListWheelScrollView(
// itemExtent: 200,
// children: [
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
// Image.asset('assets/download.jpg',width: double.infinity,),
//
// ],
// ),