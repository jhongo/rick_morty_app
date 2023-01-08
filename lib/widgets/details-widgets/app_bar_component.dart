

import 'package:flutter/material.dart';


class AppBarComponent extends StatelessWidget {
  final double width;
  final double height;
  
  const AppBarComponent({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width:width,
        height: height * 0.1,
        // color: Colors.indigo,
        child: Row(
          children: [
            SizedBox(width: 10,),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () => print('Click'),
              child: Container(
                alignment: Alignment.center,
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                // color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.arrow_back_ios_rounded),
              ),
            )
          ],
        ),
      
      ),
    );
  }
}