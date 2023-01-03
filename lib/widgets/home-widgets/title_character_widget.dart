import 'package:flutter/material.dart';


class TitleCharacter extends StatelessWidget {
  
  final double w;
   TitleCharacter({super.key, required this.w});

  final Shader linearGradient = LinearGradient(
    colors: [
      Color(0xFF0e1c26),
      Color(0xFF2a454b),
      Color(0xFF294861),
    ]).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      width: w * 0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Characters',
          style: TextStyle(
            fontSize: 35, 
            fontWeight: FontWeight.w700,
            foreground: new Paint()..shader = linearGradient
            ), ),
          Text('Main characters',
          style: TextStyle(
            fontSize: 16, 
            fontWeight: FontWeight.w500,
            foreground: new Paint()..shader = linearGradient
            ), )
        ],
      ),

    );
  }
}