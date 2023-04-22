import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget
{
  final String btnName;
  final Color? bgcolor;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton(
      {
        required this.btnName,
        this.bgcolor= Colors.green,
        this.icon,
        this.textStyle,
        this.callback
      });

  @override
  Widget build(BuildContext context) {
  return ElevatedButton(
      onPressed: (){
        callback!();
      },
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      )
    ),
      child: Row(
        children: [
          icon!,
          Container(width: 10,),
          Text(btnName)
        ],
      )
    
  );
  }
  
}