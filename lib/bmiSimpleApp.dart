import 'package:flutter/material.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: bodymassindex(),
    );
  }
}

class bodymassindex extends StatefulWidget
{
  @override
  State<bodymassindex> createState() => _bodymassindexState();
}

class _bodymassindexState extends State<bodymassindex> {
  var HeightFeet= TextEditingController();
  var HeightInch= TextEditingController();
  var valueWeight= TextEditingController();
  var result;
  Color bgcolor= Colors.green;
  Widget build(BuildContext context)
  {
    var msg='Health Status here';

  return Scaffold(
      body: Center(
        child: Container(
width: double.infinity,
          color: bgcolor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI Calculator', style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                TextField(
                    controller: HeightFeet,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Height in feet'),
                  ),
                ),
                TextField(
                  controller: HeightInch,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Height in Inches'),
                  ),
                ),
                TextField(
                  controller: valueWeight,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Weight in KG'),
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      var weightinInteger = int.parse(valueWeight.text.toString());
                  var heightcm=  30.48 *(int.parse(HeightFeet.text.toString())) +2.54* (int.parse(HeightInch.text.toString()));
                  var heightmeters= heightcm * 0.01  ;
                  result = (weightinInteger/ (heightmeters*heightmeters)).toStringAsFixed(2) ;
print('$msg');
                  print(result);

                  setState(() {

                  });
                  },


                    child: Text('Calculate BMI'),
                ),

                Text('Your BMI is : $result',style: TextStyle(fontSize: 20,),),
                Text('Your :$msg',style: TextStyle(fontSize: 20,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}