import 'package:flutter/material.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Clip(),
    );
  }
  
}
class Clip extends StatefulWidget
{
  @override
  State<Clip> createState() => _ClipState();
}

class _ClipState extends State<Clip> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.amber,
  body: Center(
    child: ClipRRect(
      borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(200, 110),
          topLeft: Radius.elliptical(200, 101),
          topRight: Radius.elliptical(200, 110)
      ),
      child: Image.asset('assets/download.jpg'),
    ),
  ),
);
  }
}