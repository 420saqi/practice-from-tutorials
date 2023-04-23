import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: maplistofobjects(),
    );
  }
}
class maplistofobjects extends StatefulWidget
{
  @override
   State createState()=>_mapState();
}

class _mapState extends State{

  List<books> listofbooks=[
    books(author: 'harry', bookName: 'Hary potter and deathly hallows', price: 2000.0),
    books(author: 'Broke', bookName: "WWE reigns of fire", price: 1009.0),
    books(author: 'saqib', bookName: 'noname', price: 999.0),
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
        children: listofbooks.map((book) => Text('${book.bookName} -'
            ' ${book.author} - ${book.price} ')).toList()
      ),
    );
  }
}
class books
{
  String author;
  String bookName;
  double price;

  books({required this.author,required this.bookName, required this.price});
}