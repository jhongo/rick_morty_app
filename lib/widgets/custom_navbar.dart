import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/models/navbar_item_models.dart';
import 'package:rick_morty/services/navbar_service.dart';

class CustomNavBar extends StatelessWidget {
   
  const CustomNavBar({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final index = Provider.of<NavBarService>(context);
    final w = MediaQuery.of(context).size;
    return Container(
      width: w.width * 0.5,
      height: kToolbarHeight,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Color(0xFF284b63),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: opc_menu.length,
        itemBuilder:(context, int index){
          final opcs =  opc_menu[index];
          return ItemOpc(
            option: opcs,
          );
        }),
    );
  }
}

class ItemOpc extends StatelessWidget {
  final NavbarItem option;
  const ItemOpc({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerItem = Provider.of<NavBarService>(context);
    return GestureDetector(
      onTap: () {
        providerItem.opcMenuSet = option.index;
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: (providerItem.opcMenuGet == option.index) 
          ?Color(0xFFd9d9d9)
          : Color(0xFFd9d9d9),
          shape: BoxShape.circle
        ),
        child: Icon(
          option.icon,
          size:(providerItem.opcMenuGet == option.index) ? 28 : 25,
          color: (providerItem.opcMenuGet == option.index)
          ?Color(0xFF353535)
          : Color(0xFF3c6e71),
          ),
      ),
    );
  }
}