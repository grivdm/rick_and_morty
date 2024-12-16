import 'dart:convert';

import 'package:rick_and_morty/core/errors/exception.dart';
import 'package:rick_and_morty/feature/data/models/character_model.dart';
import 'package:http/http.dart' as http;

abstract interface class CharactersRemoteDatasource {
  Future<List<CharacterModel>> getAllCharacters(int page);
  Future<List<CharacterModel>> searchCharacters(String query);
}

class CharactersRemoteDatasourceImpl implements CharactersRemoteDatasource {
  final http.Client client;

  CharactersRemoteDatasourceImpl({required this.client});

  @override
  Future<List<CharacterModel>> getAllCharacters(int page) =>
      _getCharactersfromUrl(
          'https://rickandmortyapi.com/api/character/?page=$page');

  @override
  Future<List<CharacterModel>> searchCharacters(String query) =>
      _getCharactersfromUrl(
          'https://rickandmortyapi.com/api/character/?name=$query');

  Future<List<CharacterModel>> _getCharactersfromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final rawCharacters = jsonDecode(response.body);
      return (rawCharacters['results'] as List)
          .map((e) => CharacterModel.fromJson(e))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
