import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/widgets/details-widgets/app_bar_component.dart';
import 'package:rick_morty/widgets/details-widgets/background_details_component.dart';
import 'package:rick_morty/widgets/details-widgets/data_character_component.dart';

class DetailsScreen extends StatelessWidget {
   final Character dcharacter;
  
   DetailsScreen({Key? key, required this.dcharacter}) : super(key: key);

  final Shader gradientText = LinearGradient(
    colors: [
      Color(0xFFC11E38),
      Color(0xFF721536),
      Color(0xFF220B34),
    ]).createShader(new Rect.fromLTWH(150.0, 0.0, 300.0, 70.0) );
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    // final Character dcharacter = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgroundDetailsComponent(),
          Positioned( left: 20, top: 20, child: AppBarComponent()),
          Positioned(
            top: 300,
            child: DataCharacter(
              widget: Column(
                children: [
                  SizedBox(height: 70,),
                  Container(
                    child: Text('${dcharacter.name}', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, foreground: new Paint()..shader = gradientText ),),
                  )
                ],
              ),
            )),

          Positioned(
            top: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo,
                ),
                child: Image.network('${dcharacter.image}'),
              ),
            ),
          ),


        ],
      )
    );
  }
}