import 'package:flutter/material.dart';

class ItemData extends StatelessWidget {

  final String item;
  final String detail;
  final IconData icon;
  const ItemData({super.key, required this.item, required this.detail, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
      ),
      title: Text('${detail}', style: TextStyle(fontSize: 25, color: Color(0xFF540b0e,),fontWeight: FontWeight.bold ),),
      subtitle: Text('${item}', style: TextStyle(color: Color(0xFF9e2a2b), fontWeight: FontWeight.w600 ),),
      iconColor: Color(0xFFbb9457),
      style: ListTileStyle.list,
    );
  }
}
