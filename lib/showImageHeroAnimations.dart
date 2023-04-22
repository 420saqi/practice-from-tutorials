import 'package:flutter/material.dart';

import 'HeroAnimations.dart';

class showImage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Hero(
        tag:'show image',
        child: Container(
          height: 300,
          width: double.infinity,
          color: Colors.green,),
      ),
    );
  }
}