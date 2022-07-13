import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/services/character_service.dart';
import 'package:rick_morty/widgets/grid_characters.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final characters = Provider.of<CharacterService>(context);
    return Scaffold(
      backgroundColor: Color(0xFFd9d9d9),
      appBar: AppBar(
        backgroundColor: Color(0xFFd9d9d9),
        elevation: 0,
        title: Text('Rick and Morty', style: TextStyle(color: Color(0xFF353535)),),
        centerTitle: true,
      ),
      body: GridCharacters()
    );
  }
}

