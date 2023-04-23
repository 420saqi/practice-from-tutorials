import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {return MaterialApp(
    home: Rippleanimation(),
  );}
}
class Rippleanimation extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=> RippleState();
}

class RippleState extends State<StatefulWidget> with TickerProviderStateMixin{

late Animation _animation;
late AnimationController _animationController;
late Animation color;
var customopacity =1.0;
@override
  void initState() {
    super.initState();


    _animationController= AnimationController(vsync: this, duration: Duration(seconds: 4));
      _animation =Tween(begin: 0.0, end: customopacity).animate(_animationController);
color = ColorTween(begin: Colors.red, end: Colors.blue).animate(_animationController);
      _animationController.addListener(() {
  setState(() {
  });
})  ;
_animationController.forward();
}
  opacity(){

    customopacity=0.0;
print(customopacity);
  setState(() {

  });
}
Widget ani()
{
  return Stack(
    alignment: Alignment.center,
    children:listofcontainers.map((e) => Container(
      decoration: BoxDecoration(
          color: Colors.red.withOpacity(_animation.value),
          shape: BoxShape.circle
      ),
      height: e*_animation.value,
      width: e*_animation.value,
    )).toList() ,

  );

}
var listofcontainers= [100.0,150.0,200.0];
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ani(),
              // opacity(),
            ],
          )


          // Container(
          //   height: _animation.value,
          //   width: _animation.value,
          //   decoration:  BoxDecoration(
          //       color: Colors.orange,
          //       borderRadius: BorderRadius.circular(25)
          //   ),
          // ),
        )
    );
  }
}

