import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/widgets/details-widgets/app_bar_component.dart';
import 'package:rick_morty/widgets/details-widgets/background_details_component.dart';

import 'package:rick_morty/widgets/details-widgets/data_character_component.dart';
import 'package:rick_morty/widgets/details-widgets/item_data_component.dart';
import 'package:rick_morty/widgets/details-widgets/name_character_component.dart';

class DetailsScreen extends StatelessWidget {
   final Character dcharacter;
  
   DetailsScreen({Key? key, required this.dcharacter}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
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
                  NameCharacter(name: '${dcharacter.name}'),
                  Text('${dcharacter.species}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400 ),),
                  ItemData(item: 'Status', detail: '${dcharacter.status}', icon: Icons.volunteer_activism_rounded),
                  ItemData(item: 'Gender', detail: '${dcharacter.gender}', icon: Icons.wc),
                  ItemData(item: 'Origin', detail: '${dcharacter.origin?.name}', icon: Icons.public),
                  ItemData(item: 'Episode', detail: '${dcharacter.episode.length}', icon: Icons.tv_rounded),
                ],
              ),
            )),

          Positioned(
            top: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SlideInDown(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.network('${dcharacter.image}'),
                ),
              ),
            ),
          ),


        ],
      )
    );
  }
}