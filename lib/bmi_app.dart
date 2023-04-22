
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      home: bodyMassIndex(),
    );
  }
}

class bodyMassIndex extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> _bodyMassIndexState();
}
class _bodyMassIndexState extends State<StatefulWidget>
{
  RangeValues value= RangeValues(0,200);
  @override
  Widget build(BuildContext context)
  {
    RangeLabels label =RangeLabels(value.start.toString(),value.end.toString());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:RadialGradient(
            colors: [Colors.yellow,
            Colors.green],
          center: Alignment.topRight
          )
          // LinearGradient(
          //   colors: [Color(0xff00c6fb),Color(0xff005bea)],
          //   stops:[0.3,0.7],
          //   begin: FractionalOffset(0.5,1 ),
          //   end: FractionalOffset(0,0)
          // )
        ),
        child: Column(
          children: [
            //section 1
            Expanded(
              flex: 1,
              child: Container(
                // margin: EdgeInsets.only(top: 25),
                // color:Colors.green,
                child: Center(
                  child: Text('BMI Calculator',
                    style: TextStyle(
                    fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            //section 2
            Expanded(
              flex: 2,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        Icon(Icons.add_a_photo, size: 70,color: Colors.red,),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Male',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.add_a_photo, size: 70,color: Colors.red,),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Female',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),
                        )
                      ],
                    ),
                  ],
                ) ),
            Text('Height'),
            Expanded(
                child: RangeSlider(
                  values: value,
                  labels: label,
                  divisions: 200,
                  min: 0,
                  max: 200,
                  onChanged: (RangeValues newvalue){
                    value= newvalue;
                    setState(() {});
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}