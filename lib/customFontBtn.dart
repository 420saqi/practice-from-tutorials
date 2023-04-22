import 'package:flutter/material.dart';

class elevatedButton extends StatelessWidget
{
   final String btnName;
   final Color bgcolor;
   final TextStyle? textStyle;
   final VoidCallback? callback;


  elevatedButton({required this.btnName,
    this.bgcolor=Colors.orange,
    this.textStyle,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        callback!();
      },
        child:Text(btnName),

      style: ElevatedButton.styleFrom(
        primary: bgcolor,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.green)
        )
      ),
    );
  }

}