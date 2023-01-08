import 'package:flutter/material.dart';



class BackgroundDetailsComponent extends StatelessWidget {


  const BackgroundDetailsComponent({super.key,});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/imgs/back_rick_morty.jpg',),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Color(0xFF283618), BlendMode.overlay)
          )
      ),
    );
  }
}