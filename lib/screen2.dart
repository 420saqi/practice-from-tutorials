import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget
{
  var valueFromPreviouSscreen;


  Screen2(this.valueFromPreviouSscreen);

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Text('Welcome ! : $valueFromPreviouSscreen '),
        ],
      ),
    );
  }
}