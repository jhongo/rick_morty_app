import 'package:flutter/material.dart';


class NavbarItem {

  final IconData icon;
  final String name;
  final int index;

  NavbarItem({
    required this.icon, 
    required this.name,
    required this.index
    });
  
}

final opc_menu = <NavbarItem>[

  NavbarItem(
    icon: Icons.home_filled, 
    name: 'all',
    index: 0
    ),
  NavbarItem(
    icon: Icons.groups_rounded, 
    name: 'gender', 
    index: 1),
  NavbarItem(
    icon: Icons.person, 
    name: 'profile',
    index: 2
    ),
];