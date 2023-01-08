import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/widgets/home-widgets/home_widgets.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  // final VoidCallback onTap;
  final double width;
  const CharacterCard({super.key, 
  required this.character, 
  required this.width});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(50),
          )),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(50),
          ),
          child: Stack(
            children: [
              Container(
                height: h,
                child: FadeInImage(
                  placeholder: AssetImage('assets/gif/pickle.gif'),
                  image: NetworkImage('${character.image}'),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(bottom: 0, child: NameTitle(text: '${character.name}',))
    
            ],
          )),
    );
  }
}
