import 'package:flutter/material.dart';

import 'calculator.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:  addsubdivmul(),
    );
  }
}

class addsubdivmul extends StatefulWidget{


  @override
  State<StatefulWidget> createState()=> addsubdivmulState();
}

class addsubdivmulState extends State<StatefulWidget>
{
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 =TextEditingController();
  dynamic res;
  dynamic first;
  dynamic sec;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Res is : $res'),
            TextField(
              controller: value1,
              decoration: InputDecoration(
                 border:OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                    style: BorderStyle.solid
                  ),
                  
                  borderRadius: BorderRadius.circular(100),
                ),
                hintText: 'Enter 1st number!',
              ),

            ),

            SizedBox(
              height: 10,
            ),

            TextField(
              controller: value2,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                      style: BorderStyle.solid
                  ),

                  borderRadius: BorderRadius.circular(100),
                ),
                hintText: 'Enter 1st number!',


              ),
            ),

            ElevatedButton(
              onPressed: (){
                  // int.parse(value1.text.toString())
                  //int.parse(value2.text.toString())
                  first =int.parse(value1.text.toString());
                  sec = int.parse(value2.text.toString());
// var sum = first+sec;
                  res = first+sec;
                setState(() {
                print(res);
                print(value1);
                print(value2);
                });
              },
              child:Text('Plus'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  // int.parse(value1.text.toString())
                  //int.parse(value2.text.toString())
                  first =int.parse(value1.text.toString());
                  sec = int.parse(value2.text.toString());
// var sum = first+sec;
                  res = first-sec;
                  setState(() {
                    print(res);
                    print(value1);
                    print(value2);
                  });
                },
                child:Text('Sub'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  // int.parse(value1.text.toString())
                  //int.parse(value2.text.toString())
                  first =int.parse(value1.text.toString());
                  sec = int.parse(value2.text.toString());
// var sum = first+sec;
                  res = first*sec;
                  setState(() {
                    print(res);
                    print(value1);
                    print(value2);
                  });
                },
                child:Text('MUL'),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                // int.parse(value1.text.toString())
                //int.parse(value2.text.toString())
                first =int.parse(value1.text.toString());
                sec = int.parse(value2.text.toString());
// var sum = first+sec;
                res = first/sec;
                setState(() {
                  print(res);
                  print(value1);
                  print(value2);
                });
              },
              child:Text('Div'),
            ),

            Padding(
              padding: const EdgeInsets.all(38.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>Calculator(),
                  ),
                  );
                },
                child: Text('click to go to next page'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
