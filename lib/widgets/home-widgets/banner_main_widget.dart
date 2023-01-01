import 'package:flutter/material.dart';

class BannerMain extends StatelessWidget {
  final double width;
  final double height;
  const BannerMain({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(10),
      // color: Colors.indigo,
      child: Stack(
        alignment: Alignment.center,
        children: [

         ClipRRect(
          borderRadius: BorderRadius.circular(20),
           child: Container(
            width: width*0.95,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
                 ),
            child: FadeInImage(
              placeholder: AssetImage('assets/gif/giphy.gif'), 
              image: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/410/59/609/rick-and-morty-tv-rick-sanchez-morty-smith-wallpaper-preview.jpg')
              )
            ),
         ),


         
        ],
      ),
    );
  }
}