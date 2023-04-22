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
{
//   late Animation _animation;
//   late AnimationController _animationController;
//   var sizeoficon;
// late Animation _color;
//   @override
//   void initState() {
//     _animationController= AnimationController(vsync: this, duration: Duration(seconds: 4));
//     _animation= Tween(begin: 0.0, end: 200.0).animate(_animationController);
//     _animationController.addListener(() {
//      _color = ColorTween(begin: Colors.blue, end: Colors.red).animate(_animationController);
//       setState(() {
// sizeoficon= _animation.value;
//       });
//     });
//
//     _animationController.forward();
//   }
//

  var customOpacity=0.0;

  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              onEnd:(){ setState(() {
                customOpacity=1;
              });},
              duration: Duration(seconds: 4),
curve: Curves.bounceIn,
              builder: (context, value, child) {
                return Icon(Icons.flash_on,
                  size: value,
                  color: Colors.red,
                );
              },
              tween: Tween(begin: 0.0, end: 200.0),

            ),
            AnimatedOpacity(
              opacity: customOpacity,
              duration: Duration(seconds: 1),
              child: Text('Energizer', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:30
              ),),
            )
          ],
        ),
      ),
    );
  }
}