import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'greybuttons.dart';
// import 'customFontBtn.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
      ),
      home:  Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Wrap (
              // defaalut alignment is horizontal
              // direction, spacing , runspacing, alignment
// direction: Axis.vertical,
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),

              ],
            ),
            RichText(
                text:TextSpan(
                  children: [
                    TextSpan(
                      text: 'hello'
                    ),

                    TextSpan(
                      text: 'world!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.blue,
                      )

                    )
                  ]
                )
            ),
          ],
        ),
    );
  }


}
