import 'package:flutter/material.dart';

class NameCharacter extends StatelessWidget {
  NameCharacter({super.key, required this.name});
  final String name;
  final Shader gradientText = LinearGradient(colors: [
    Color(0xFFC11E38),
    Color(0xFF721536),
    Color(0xFF220B34),
  ]).createShader(new Rect.fromLTWH(150.0, 0.0, 300.0, 70.0));

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      width: w,
      child: Text(
        '$name',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            foreground: new Paint()..shader = gradientText),
      ),
    );
  }
}
