import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Greybuttons extends  StatelessWidget
{
  final String btnName;
  final Color? bgcolor;
// final Color? textColor;
  Greybuttons
 (
  {
     required this.btnName,
    this.bgcolor=Colors.black45,
  // this.textColor= Colors.white,

  }
);

  @override
  Widget build(BuildContext context) {
return SizedBox(
  height: 40,
  width: 40,
  child:   ElevatedButton(

      onPressed: ()=>null,

      child: Text(

        btnName,
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      side: BorderSide(
        width: 2,
        color: Colors.black45
      ),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),

      )
    ),



  ),
);
  }

}