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
     color: Color(0xFFffbf69),
    );
  }
}