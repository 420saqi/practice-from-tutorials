import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
     List  colors= [
      Colors.red,
      Colors.green,
      Colors.blue,
    ];
    clicked(){
      print('cllllllllllllliiiiiiiiiicked');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
         topBar(),
          Expanded(
              flex: 8,
              child:GridView.count(crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.brown,
                ),
              ],
              )
          ),
        ],
      ),
    );
  }
}
//////////////////CUSTOM WIDGET//////////////////////
class topBar extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return  Expanded(
      flex: 2,
      child:Row(
        children: [
          Expanded(child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,)),
          Expanded(child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.yellow,))
        ],
      ),

    );
  }
}
//////////////////// Custom Widget//////////////
class body extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Expanded(
        flex: 8,
        child:GridView.count(crossAxisCount: 2,
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.brown,
            ),
          ],
        )
    );

  }
}