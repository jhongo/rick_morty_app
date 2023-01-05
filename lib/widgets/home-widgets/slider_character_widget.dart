import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/screens/details_screen.dart';
import 'package:rick_morty/services/character_service.dart';
import 'package:rick_morty/widgets/home-widgets/home_widgets.dart';


class SliderCharacter extends StatelessWidget {
  
  final double width;
  final double height;
  
  const SliderCharacter({super.key, required this.width, required this.height});

  //  _onTapCharacter( Character characters, BuildContext context)async {
  //   await Navigator.of(context).push(
  //     PageRouteBuilder(
  //       pageBuilder:(context, animation, secondaryAnimation) {
  //         return FadeTransition(
  //           opacity: animation,
  //           child: DetailsScreen(dcharacter: characters),
            
  //           );
  //       },
        
  //       )
  //   );
  // }



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
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder:(context, animation, secondaryAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: DetailsScreen(dcharacter: dataCharacter),
                      );
                  },)
                );
            },
            child: CharacterCard(
              // onTap: _onTapCharacter( dataCharacter,context),
              width: 200,
              character: dataCharacter,
              ),
          );
        } 
        
        )
    );
  }
}