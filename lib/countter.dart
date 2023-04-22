import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Calculator(),
   );
  }
}

class Calculator extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CalculatorState();

}

  class _CalculatorState extends State<StatefulWidget>
{
  var count= 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter : $count"),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  count++;
                });
              },
              child: Text('click'),

            ),
          ],
        ),
      ),
    );
  }
}




