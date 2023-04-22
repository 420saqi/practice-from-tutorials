import 'package:flutter/material.dart';
// import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  home: Shared(),
);
  }
}
class Shared extends StatefulWidget
{State<StatefulWidget> createState()=> prefState();}
class prefState extends State<StatefulWidget>
{

  TextEditingController getvalue= TextEditingController();
var value= 'No value';

@override
  void initState() {
    super.initState();
    functogetvalue();
  }
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: SizedBox(
        width: 200,
        child: Center(
          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: getvalue,
decoration: InputDecoration(
  label: Text('Enter Text'),
  border: OutlineInputBorder(
        borderSide: BorderSide(width: 3),
        borderRadius: BorderRadius.circular(10)
  )
),
              ),

              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: ()async{
                    print(getvalue.text.toString());

                    var preps= await SharedPreferences.getInstance();
                    preps.setString('key1', getvalue.text.toString());
                  },
                  child: Text('save')),
              SizedBox(height: 10,),

              Text(value)
            ],
          ),
        ),
      ),
    ),
  );
  }
  void functogetvalue() async{
  var prep=await SharedPreferences.getInstance();
  var getva= prep.getString('key1');
setState(() {
  value=getva ?? 'no value';
  print(value);
});
  }
}












                      // RIPPLE ANIMATION
// class Rippleanim extends StatefulWidget
// {
//   State<StatefulWidget> createState()=>animState();
//
// }
// class animState extends State<StatefulWidget>
// {
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body: RippleAnimation(
//         key: UniqueKey(),
//         child: Icon(Icons.dangerous, size: 50,),
//         minRadius: 5.0,
// // repeat: true,
//         color: Colors.blue,
//        duration: Duration(seconds: 2),
//
//       ),
//     );
//   }
// }