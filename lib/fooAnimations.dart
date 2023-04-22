import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: fooAnimations(),
    );
  }
}

class fooAnimations extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>fooState();
}
class fooState extends State<StatefulWidget>
{
  var Opacity= 1.0;
  var myWidth= 200.0;
  var myHeight=100.0;
  var myColor=Colors.green;
  bool condition=true;
  var showfade='Fade';
  CrossFadeState showfirst= CrossFadeState.showFirst;

  @override
  void initState() {
reload();
  }
  void reload(){
    setState(() {
      Timer(Duration(seconds: 5), () {
        showfirst=CrossFadeState.showSecond;

      });
    });
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 3),
              crossFadeState: showfirst,
              firstChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: Duration(seconds: 4),
                    opacity:  Opacity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: Duration(seconds: 5),
                          width: myWidth,
                          height: myHeight,
                          color: myColor,
                        ),
                        ElevatedButton(
                            onPressed: (){
                              myColor=Colors.red;
                              myHeight=200.0;
                              myWidth=100.0;
                              setState(() {
                                if(condition){myColor=Colors.green;
                                myHeight=100.0;
                                myWidth=200.0;
                                condition=false;
                                }
                                else{
                                  myColor=Colors.red;
                                  myHeight=200.0;
                                  myWidth=100.0;
                                  condition=true;
                                }
                              });
                            },
                            child: Text('click'))
                      ],
                    ),
                  ),
                  OutlinedButton(onPressed: (){
                    if(condition)
                    {
                      Opacity=1.0;
                      condition=false;
                      showfade='Fade';
                    }
                    else
                    {
                      Opacity=0.0;
                      condition=true;
                      showfade='Show';
                    }

                    setState(() {

                    });
                  },
                      child: Text('click to : $showfade'))
                ],
              ),
              secondChild: Container(
                width: 200,
                height: 100,
                color: Colors.yellowAccent,
              ),
            ),
            // ElevatedButton(
            //     onPressed: (){
            //       setState(() {
            //         if(condition)
            //           {
            //             condition=false;
            //             showfirst=CrossFadeState.showFirst;
            //           }
            //         else{
            //           condition=true;
            //           showfirst=CrossFadeState.showSecond;
            //         }
            //       });
            //     },
            //     child: Text('show other Widget'))
          ],
        ),


      ),
    );
  }
}