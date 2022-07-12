import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/models/character_response.dart';

class CharacterService extends ChangeNotifier {

  String _urlBase = 'rickandmortyapi.com';

  List<Character> resultsCharacter = [];

  CharacterService(){
    print('CharacterService inicializado');
    getAllCharacter();
  }

/// It gets all the characters from the API.
  getAllCharacter() async {
    final url = await Uri.https(_urlBase,'/api/character',{
      'page':'1'
    });


    final response = await http.get(url);
    final characterResponse = RickAndMortyResponse.fromJson(response.body);
    resultsCharacter = characterResponse.results;
    notifyListeners();
  }
  
}