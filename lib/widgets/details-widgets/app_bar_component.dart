

import 'package:flutter/material.dart';


class AppBarComponent extends StatelessWidget {

  
  const AppBarComponent({super.key, });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(50),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        ),
      ),
    );
  }
}