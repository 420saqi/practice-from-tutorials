import 'package:flutter/material.dart';
import 'package:practice/countter.dart';

import 'creating_a_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen() ,
    //  const MyHomePage(title: 'Flutter Demo Home Page')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    clicked(){
      print('cllllllllllllliiiiiiiiiicked');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
            },
                child: Text('click to choose date')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));
            }, child: Text('nextttt'))

          ],
        ),
      ),
    );
  }
}
//           Code for GridView.builder
// GridView.builder(
// // gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
// //   crossAxisCount: 3,
// // ) ,
// gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 550,
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// ),
// itemBuilder: (context, index){
// return Container(
// color: Colors.red,
// );
//
// },
// itemCount: 5,
// ),