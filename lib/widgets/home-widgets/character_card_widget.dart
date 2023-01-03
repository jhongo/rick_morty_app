import 'package:flutter/material.dart';


class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: 200,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        topLeft: Radius.circular(30)
      ),

      ),

    );
  }
}