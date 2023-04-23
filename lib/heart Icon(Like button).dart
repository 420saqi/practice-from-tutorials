import 'package:flutter/material.dart';
main()=>runApp(const MyApp());

class  MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Like button",
      theme: ThemeData(
        brightness: Brightness.light
      ),
      themeMode: ThemeMode.light,
      home: const HeartButton(),
    );
  }
}

class HeartButton extends StatefulWidget
{
  const HeartButton({super.key});

  @override
  State createState()=>HeartButtonState();
}

class HeartButtonState extends State
{
  bool check=false;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text("Click to like",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800
              ),
              ),
              
              InkWell(

                  onTap: (){
                  if(check==true)
                    {
                      check=false;
                    }
                  else
                    {
                      check=true;
                    }
                  setState(() {
                  });
                  },
                  child: check ? const Icon(Icons.heart_broken,
                    size: 40,
                    color: Colors.red,
                  ):
                  const Icon(Icons.heart_broken,
                    size: 40,
                  ),
              )

            ],
          ),
        ),
      ),
    );
  }
}