import 'package:flutter/material.dart';
import 'package:practice/creating%20rounded%20btn%20with%20icon.dart';

import 'customFontBtn.dart';

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

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //green button
              Container(
                width: 100,
                child: RoundedButton(
                  icon: Icon(Icons.account_box),
                  btnName: 'Btn 1',
                  callback: (){
                    print('clicked btn 1');
                  },
                ),
              ),
              //red button
              Container(
                width: 100,
                child: RoundedButton(
                  icon: Icon(Icons.password),
                  btnName: 'Btn 2',
                  callback: (){
                    print('clicked btn 2');
                  },
                  bgcolor: Colors.red,
                ),
              ),
              //amber button
              Container(
                width: 100,
                child: RoundedButton(
                  icon: Icon(Icons.account_box),
                  btnName: 'Btn 3',
                  callback: (){
                    print('clicked btn 3');
                  },
                  bgcolor: Colors.amber,
                ),
              ),
            ],
          ),
        ),
    );
  }
}