import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';


class CharacterCard extends StatelessWidget {

  final Character character;

  const CharacterCard({super.key, required this.character});

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