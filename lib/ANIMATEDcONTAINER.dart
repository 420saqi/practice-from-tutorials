import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: animatedContainer(),
    );
  }
}

class animatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _animatedContainerState();
}

class _animatedContainerState extends State<StatefulWidget> {
  var _width = 200.0;
  var _height = 100.0;
  var bgcolor = Colors.green;
  bool condition = true;
  String position= 'Horizontal Position';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 4),
              width: _width,
              height: _height,
              color: bgcolor,
              child: Center(child: Text('$position',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {
                  if (condition) {
                    setState(() {
                      _height = 200;
                      _width = 100;
                      condition = false;
                      bgcolor = Colors.brown;
                      position =' Verticalyesss Position';
                    });
                  } else {
                    setState(() {
                      _height = 100;
                      _width = 200;
                      bgcolor = Colors.green;
                      condition = true;
                      position= 'Horizontal Position';
                    });
                  }
                },
                child: Text('click'))
          ],
        ),
      ),
    );
  }
}
