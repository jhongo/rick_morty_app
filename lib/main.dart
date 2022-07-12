import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/screens/home_screen.dart';
import 'package:rick_morty/services/character_service.dart';

void main() => runApp(AppState());


class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context) => CharacterService(),lazy: false, )
      ],
      child: MyApp(),
      );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick and Morty',
      home: HomeScreen()
    );
  }
}