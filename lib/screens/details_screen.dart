import 'package:flutter/material.dart';
import 'package:rick_morty/models/character.dart';
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
      appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(onPressed:(){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_rounded, color: Color(0xFF5f0f40))),
      title: Text('Datos personales', style: TextStyle(fontSize: 25, color: Color(0xFF5f0f40) ),),
      ),
      body: Container(
        width: w,
        height: h,
        color: Colors.black,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(100)
              ),
              child: Container(
                width: w * 0.75,
                height: h * 0.4,
                decoration: BoxDecoration(
                color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(100)
                  )
                ),
                child: FadeInImage(
                  fit: BoxFit.fill,
                  placeholder: AssetImage('assets/gif/giphy.gif'), 
                  image: NetworkImage('${dcharacter.image}')
                  
                  ),
              ),
            ),
      
          Positioned(
            right: 0,
            child: RotatedBox(
              quarterTurns: -1,
              child: Container(
                width: w * 0.8,
                height: h * 0.08,
                color: Colors.indigo,
                child: Text(' ${ (dcharacter.origin!.name)} ',style: TextStyle(fontSize: 25, color: Colors.white),  ),
              ),
            ),
          )
      
          ],
        ),
      )
    );
  }
}