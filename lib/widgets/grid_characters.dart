import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/services/character_service.dart';

class GridCharacters extends StatelessWidget {
  const GridCharacters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final character = Provider.of<CharacterService>(context);
    return GridView.builder(
          physics: BouncingScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15, 
            childAspectRatio:5,
            mainAxisExtent: 230
          
          ),
        itemCount: character.resultsCharacter.length,
        itemBuilder:(_, index){
          
          return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          gradient:const LinearGradient(
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
              Color(0xFFf9a470),
              Color(0xFFbc556f),
            ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: -20,
              top: -20,
              child: CircleAvatar(
                backgroundImage: NetworkImage(character.resultsCharacter[index].image,),
                backgroundColor: Colors.transparent.withOpacity(0.2),
                radius: 90,
                
              )
            ),

             Positioned(
              
              bottom: 20,
              child: Text(character.resultsCharacter[index].name, 
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),
              ) )
          ],
        )
        
      ),
    );
        }
        );
  }
}


