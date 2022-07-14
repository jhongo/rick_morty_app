import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';

class DetailsScreen extends StatelessWidget {
   final Character dcharacter;
  const DetailsScreen({Key? key, required this.dcharacter}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    // final Character dcharacter = ModalRoute.of(context)!.settings.arguments as Character;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFFdad7cd),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(onPressed:(){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_rounded, color: Color(0xFF5f0f40))),
      title: Text('Detalles', style: TextStyle(fontSize: 25, color: Color(0xFF5f0f40) ),),
      ),
      body: Container(
        width:w,
        height: h,
        color:  Color(0xFFdad7cd),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Hero(
              tag: dcharacter.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(dcharacter.image),
                radius: 100,
              ),
            ),

            Positioned(
              top: 250,
              child: Text(dcharacter.name, style: TextStyle(color: Color(0xFF0f4c5c), fontSize: 30, fontWeight: FontWeight.w600) ,))
          ],
        ),
      )
    );
  }
}