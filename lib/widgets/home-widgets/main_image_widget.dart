import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {

  final double width;
  const MainImage({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      child: JelloIn(
          child: Image.asset(
        'assets/imgs/rick_and_morty.png',
        scale: 9,
      )),
    );
  }
}
