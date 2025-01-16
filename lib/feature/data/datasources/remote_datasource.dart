// import 'dart:convert';
import 'dart:developer';

import 'package:rick_and_morty/core/errors/exception.dart';
import 'package:rick_and_morty/feature/data/models/character_model.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/feature/data/models/characters_response_model.dart';

abstract interface class CharactersRemoteDatasource {
  Future<List<CharacterModel>> getAllCharacters(int page);
  Future<List<CharacterModel>> searchCharacters(String query, int page);
}

class CharactersRemoteDatasourceImpl implements CharactersRemoteDatasource {
  final http.Client client;

  CharactersRemoteDatasourceImpl({required this.client});

  @override
  Future<List<CharacterModel>> getAllCharacters(int page) =>
      _getCharactersfromUrl(
          'https://rickandmortyapi.com/api/character/?page=$page');

  @override
  Future<List<CharacterModel>> searchCharacters(String query, int page) =>
      _getCharactersfromUrl(
          'https://rickandmortyapi.com/api/character/?name=$query&page=$page');

  Future<List<CharacterModel>> _getCharactersfromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    log(url, name: 'url request');

    if (response.statusCode == 200) {
      final rawCharacters = CharactersResponseModel.fromJson(response.body);
      return rawCharacters.results;
    } else {
      throw ServerException();
    }
  }
}
