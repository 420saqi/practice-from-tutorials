import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(home:tweenAnimation());
  }
}
class tweenAnimation extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> tweenState();
}

class tweenState extends State<StatefulWidget>
    with TickerProviderStateMixin
// SingleTicker will take the updated values from animation and send to
//  Controller

{

  late Animation animation;
  late Animation animationtwo;

  late AnimationController animationController;
  late AnimationController animationControllertwo;
  var widthone;
  var heightone;
  @override
  void initState() {
    // below THIS keyword representing the SingleTickerPRoviderStateMixin
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween(begin:0.0, end: 200.0).animate(animationController);

    animationController.addListener(() {
      // print(animation.value);

      setState(() {

        var _width=animation.value;
        widthone= _width;
        var _height= animation.value;
        heightone=_height;
      });
    });
    // to start the controller
    animationController.forward();

                       // TO MAKE COntainer smaller on btn click

    animationControllertwo =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  animationtwo= Tween(begin: 100.0, end: 300.0).animate(animationControllertwo);

animationControllertwo.addListener(() {
  setState(() {
    var _width=animationtwo.value;
    widthone= _width;
    var _height= animationtwo.value;
    heightone=_height;
  });
  animationControllertwo.forward();
});

  }

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red ,
            width: widthone,
              height: heightone,
            ),
            ElevatedButton(
                onPressed: (){
setState(() {
  widthone = animationtwo.value;
  heightone = animationtwo.value;
  print(animationtwo.value);
});
                },
                child: Text('click'))
          ],
        ),
      ),
    );
  }
}