import 'package:flutter/material.dart';
main()=> runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  home: Gradient(),
);
  }

}
class Gradient extends StatelessWidget
{
  List colors= [
    'red',
    'green',
    'yellow','blue','white','black', 'grey' , ' amber ' , 'orange'
  ];
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 100,
        children: colors.map((e) => Container(
          width: 200,
          color: Colors.red,
          child: Text(e),
        )).toList(),
      )
    );
  }
}