import 'dart:convert';

import 'package:rick_and_morty/feature/data/models/character_model.dart';
import 'package:rick_and_morty/feature/data/models/info_model.dart';

class CharactersResponseModel {
  final InfoModel info;
  final List<CharacterModel> results;
  CharactersResponseModel({
    required this.info,
    required this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info.toMap(),
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory CharactersResponseModel.fromMap(Map<String, dynamic> map) {
    return CharactersResponseModel(
      info: InfoModel.fromMap(map['info'] as Map<String, dynamic>),
      results: List<CharacterModel>.from(
        (map['results'] as List<dynamic>).map<CharacterModel>(
          (x) => CharacterModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CharactersResponseModel.fromJson(String source) =>
      CharactersResponseModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
