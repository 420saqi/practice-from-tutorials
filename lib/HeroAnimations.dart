import 'package:flutter/material.dart';
import 'package:practice/showImageHeroAnimations.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {return MaterialApp(
    home: hero(),
  );
  }
}

class hero extends StatefulWidget{
  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>showImage())
                      );
                    },
                    child: Hero(
                        tag: 'show image' ,
                        child: Image.asset('assets/download.jpg')
                    ),
                  ),
            
          ],
        ),
      ),
    );
  }
}