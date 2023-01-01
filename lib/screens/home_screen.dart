import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/screens/gender_screen.dart';
import 'package:rick_morty/screens/profile_screen.dart';
import 'package:rick_morty/services/character_service.dart';
import 'package:rick_morty/services/navbar_service.dart';
import 'package:rick_morty/widgets/custom_navbar.dart';
import 'package:rick_morty/widgets/grid_characters.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final index = Provider.of<NavBarService>(context);
    return Scaffold(
      backgroundColor: Color(0xFFd9d9d9),

      body: Container(
        height: h,
        width: w,
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              controller:index.pageControllerGet,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GridCharacters(),
                GenderScreen(),
                ProfileScreen()
              ],
            ),

            Positioned(
              // left: 0,
              // right: 0,
              bottom: 20,
              child: CustomNavBar())
          ],
        ),
      )
    );
  }
}

