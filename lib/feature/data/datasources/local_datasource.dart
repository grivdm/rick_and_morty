import 'package:rick_and_morty/core/errors/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rick_and_morty/feature/data/models/character_model.dart';

abstract interface class CharactersLocalDatasource {
  Future<List<CharacterModel>> getLastCharactersFromCahce();
  Future<void> charactersToCache(List<CharacterModel> characters);
}

class CharactersLocalDatasourcesImpl implements CharactersLocalDatasource {
  final SharedPreferences sharedPreferences;

  static const CHARACTERS_LIST = 'CHARACTERS_LIST';

  CharactersLocalDatasourcesImpl({required this.sharedPreferences});

  @override
  Future<List<CharacterModel>> getLastCharactersFromCahce() {
    final jsonCharactersList = sharedPreferences.getStringList(CHARACTERS_LIST);
    if (jsonCharactersList != null && jsonCharactersList.isNotEmpty) {
      return Future.value(
          jsonCharactersList.map((e) => CharacterModel.fromJson(e)).toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> charactersToCache(List<CharacterModel> characters) async {
    final List<String> jsonCharactersList =
        characters.map((e) => e.toJson()).toList();

    sharedPreferences.setStringList(CHARACTERS_LIST, jsonCharactersList);
    print('cached elements: ${jsonCharactersList.length}');
  }
}
