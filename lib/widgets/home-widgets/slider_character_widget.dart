import 'package:flutter/material.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:rick_morty/widgets/home-widgets/home_widgets.dart';


class SliderCharacter extends StatelessWidget {
  
  final double width;
  final double height;
  
  const SliderCharacter({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: height* 0.33 ,
      // color: Colors.indigo,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:(context, index) => CharacterCard(),
        
        )
    );
  }
}