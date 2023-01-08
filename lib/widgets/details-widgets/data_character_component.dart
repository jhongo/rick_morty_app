import 'package:flutter/material.dart';

class DataCharacter extends StatelessWidget {

  final Widget widget;

  const DataCharacter({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFa9ff68),
            Color(0xFFef709b),

          ]),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFff5858),
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(0.5, 0.5)
              // blurStyle: BlurStyle.outer
            )
          ]
      ),
      child: widget,

    );
  }
}