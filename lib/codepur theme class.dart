import 'package:flutter/material.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  home: container(),
  theme: ThemeData(
primarySwatch: Colors.green
  ),
  themeMode: ThemeMode.dark,
  darkTheme: ThemeData(
    brightness: Brightness.dark
  ),
);
  }
}
class container extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('hello world'),
    titleSpacing: 100,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white
    ),
  ),
  body: Container(
    height: 200,
    width: 200,
    color: Colors.red,
  ),
  drawer: Drawer(
    width: 500,
    // elevation: 50,
    child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index)=>Container(
      margin: EdgeInsets.all(20),
      height: 100,
      width: 100,
      color: Colors.red,
    ),

    ),
  ),
);
  }

}