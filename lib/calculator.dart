import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'greybuttons.dart';
// import 'mathbasicfunctions.dart';
// // import 'customFontBtn.dart';
//
// void main() => runApp( MyApp());
//
//
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // primarySwatch: Colors.blue,
//       ),
//       home:  Calculator(),
//     );
//   }
// }

class Calculator extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 230,
          width: 180,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,width: 2),
            borderRadius: BorderRadius.circular(5),
          ),

          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Greybuttons(
                  //       btnName: 'C',
                  //
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '+/',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '%',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '/',
                  //       bgcolor: Colors.amber,
                  //     ),
                  //   ],
                  // ),

                  Container(height: 3,),

                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Greybuttons(
                  //       btnName: '7',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '8',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '9',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: 'X',
                  //       bgcolor: Colors.amber,
                  //     ),
                  //   ],
                  // ),

                  Container(height: 3,),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Greybuttons(
                  //       btnName: '4',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '5',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '6',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '--',
                  //       bgcolor: Colors.amber,
                  //     ),
                  //   ],
                  // ),

                  Container(height: 3,),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Greybuttons(
                  //       btnName: '1',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '2',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '3',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '+',
                  //       bgcolor: Colors.amber,
                  //     ),
                  //   ],
                  // ),

                  Container(height: 3,),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SizedBox(
                  //       width: 84,
                  //       height: 40,
                  //       child: ElevatedButton(onPressed: ()=>null,
                  //           child:Text('0',),
                  //         style: ElevatedButton.styleFrom(
                  //             backgroundColor:Colors.black45,
                  //             side: BorderSide(
                  //                 width: 2,
                  //                 color: Colors.black45
                  //             ),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(10),
                  //
                  //             )
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: ',',
                  //     ),
                  //     Container(width: 3,),
                  //     Greybuttons(
                  //       btnName: '=',
                  //       bgcolor: Colors.amber,
                  //     ),
                  //   ],
                  // ),

                ],
              ),


            ],
          ),
        ),
      )
    );
  }
}
