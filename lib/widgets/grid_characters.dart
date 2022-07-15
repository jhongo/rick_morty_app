import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/screens/details_screen.dart';
import 'package:rick_morty/services/character_service.dart';

class GridCharacters extends StatefulWidget {
  const GridCharacters({Key? key}) : super(key: key);

  @override
  State<GridCharacters> createState() => _GridCharactersState();
}

class _GridCharactersState extends State<GridCharacters> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> upWidget;

  @override
  void initState() {

    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 4000));
    upWidget = Tween( begin: 0.0, end: 1.0 ).animate(
      CurvedAnimation(parent: controller, curve: Curves.bounceIn)
    );


    if (controller.status == AnimationStatus.completed) {
      controller.reset();
      
    }
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    final characterProvideer = Provider.of<CharacterService>(context);
    controller.forward;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
          physics: BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 5,
              mainAxisExtent: 230),
          itemCount: characterProvideer.resultsCharacter.length,
          itemBuilder: (_, index) {
            final character = characterProvideer.resultsCharacter;
            final dataCharacter = character[index];
            return GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, 'details', arguments: dataCharacter);
                Navigator.of(context).push( PageRouteBuilder(
                  transitionDuration: Duration(seconds: 2),
                  transitionsBuilder:(context, animation, secondaryAnimation, child){
                    final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
                    return ScaleTransition(
                      scale: Tween<double>(begin:0.0 ,end:1.0 ).animate(curveAnimation),
                      child: child,
                      );
                  },
                  pageBuilder:(context, animation, secondaryAnimation) {
                    return DetailsScreen(dcharacter: dataCharacter);
                  },
                
                
                ));
              },
              child: Hero(
                tag: dataCharacter.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
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

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  width: 170,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                  child:FadeInImage(
                                    placeholder: AssetImage('assets/gif/giphy.gif'), 
                                    image: NetworkImage(characterProvideer.resultsCharacter[index].image),
                                    fit: BoxFit.cover,
                                  ) ,
                                ),
                              )),

                          Positioned(
                            top: 60,
                            right: -20,
                            child: Transform.rotate(
                              angle: 4.71,
                              child: Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 30,
                                color: Color(0xFF2b2d42),
                                child: Text(characterProvideer.resultsCharacter[index].species,
                                style: TextStyle(
                                  color: Color(0xFFf1faee),
                                  fontSize: 10
                                ),),
                              )
                              ),
                          ),

                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: double.infinity,
                              height: 80,
                              child: CustomPaint(
                                painter: BackgroundPainter(),
                                child:Align(
                                  alignment: Alignment.center,
                                  child: Text(characterProvideer.resultsCharacter[index].name,
                                  style: TextStyle(
                                    color: Color(0xFFf1faee),
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                  maxLines: 2,
                                  )) ,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            );
          }),
    );
  }



}


class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    
    final pencil = Paint();
    pencil.color = Color(0xFF8d99ae);
    pencil.strokeWidth = 5;
    pencil.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 0.10 , size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.1, size.width * 0.9, size.height * 0.3);
    path.lineTo(size.width * 0.85, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.5 , size.height * 0.7, size.width * 0.15, size.height * 0.8);
    path.lineTo(size.width * 0.1 , size.height * 0.3);

    // path.lineTo(size.width * 0.4, size.height * 0.2 );


  canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return true;
  }
  
}