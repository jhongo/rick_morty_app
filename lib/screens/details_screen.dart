import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/widgets/details-widgets/app_bar_component.dart';
import 'package:rick_morty/widgets/details-widgets/background_details_component.dart';
import 'package:rick_morty/widgets/home-widgets/home_widgets.dart';

class DetailsScreen extends StatelessWidget {
   final Character dcharacter;
  const DetailsScreen({Key? key, required this.dcharacter}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    // final Character dcharacter = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold(
      body: Stack(
        children: [
          BackgroundDetailsComponent(),
          AppBarComponent(width: w, height: h)
        ],
      )
    );
  }
}