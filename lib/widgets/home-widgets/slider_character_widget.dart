import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/services/character_service.dart';
import 'package:rick_morty/widgets/home-widgets/home_widgets.dart';


class SliderCharacter extends StatelessWidget {
  
  final double width;
  final double height;
  
  const SliderCharacter({super.key, required this.width, required this.height});



  @override
  Widget build(BuildContext context) {
    final character = Provider.of<CharacterService>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: height* 0.33 ,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: character.resultsCharacter.length,
        itemBuilder:(context, index) {
          final dataCharacter = character.resultsCharacter[index];
          return CharacterCard(
          character: dataCharacter ,
        );
        } 
        
        )
    );
  }
}