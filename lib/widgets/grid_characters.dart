import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty/widgets/home-widgets/banner_main_widget.dart';
import 'package:rick_morty/widgets/home-widgets/main_image_widget.dart';

class GridCharacters extends StatelessWidget {
   
  const GridCharacters({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: DecorationContainer(),
       child: SafeArea(
         child: Column(
          children: [
            MainImage(width: w),
            SizedBox(height: 20,),
            BannerMain(width: w, height: h),
            SizedBox(height: 20,),
            
          ],
         ),
       ),
      )
    );
  }



  BoxDecoration DecorationContainer() {
    return BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/imgs/rick_and_morty_background.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Color(0xFF918e4c), BlendMode.colorDodge),
        opacity: 0.6
        )
      );
  }
}