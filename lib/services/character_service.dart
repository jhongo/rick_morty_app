import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty/models/character.dart';
import 'package:rick_morty/models/character_response.dart';

class CharacterService extends ChangeNotifier {

  String _urlBase = 'rickandmortyapi.com';

/// A list of characters.
  List<Character> resultsCharacter = [];

  /// It calls the getAllCharacter() function.
  CharacterService(){
    getAllCharacter();
  }

/// It takes the URL, makes a request to the API, and then parses the response into a list of characters
  getAllCharacter() async {
    final url = await Uri.https(_urlBase,'/api/character',{
      'page':'1'
    });

    final response = await http.get(url);
    final characterResponse = RickAndMortyResponse.fromJson(response.body);
    //opc ->1
    resultsCharacter.addAll(characterResponse.results);
    //opc ->2
    // resultsCharacter = characterResponse.results;
    print(characterResponse.results);
    notifyListeners();
  }
  
}