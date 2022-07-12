// To parse this JSON data, do
//
//     final rickAndMortyResponse = rickAndMortyResponseFromMap(jsonString);

import 'dart:convert';

import 'package:rick_morty/models/character.dart';

class RickAndMortyResponse {
    RickAndMortyResponse({
      required this.info,
      required  this.results,
    });

    Info info;
    List<Character> results;

    factory RickAndMortyResponse.fromJson(String str) => RickAndMortyResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RickAndMortyResponse.fromMap(Map<String, dynamic> json) => RickAndMortyResponse(
        info: Info.fromMap(json["info"]),
        results: List<Character>.from(json["results"].map((x) => Character.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "info": info.toMap(),
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
    };
}

class Info {
    Info({
      required this.count,
      required this.pages,
      required this.next,
        this.prev,
    });

    int count;
    int pages;
    String next;
    dynamic? prev;

    factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Info.fromMap(Map<String, dynamic> json) => Info(
        count: json["count"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
    );

    Map<String, dynamic> toMap() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
    };
}






