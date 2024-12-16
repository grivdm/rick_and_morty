import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:rick_and_morty/core/errors/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';

import '../entities/character_entity.dart';
import '../repositories/character_repository.dart';

class SearchCharacters
    implements UseCase<List<CharacterEntity>, SearchCharactersParams> {
  final CharacterRepository characterRepository;
  SearchCharacters(
    this.characterRepository,
  );

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(
      SearchCharactersParams params) async {
    return await characterRepository.searchCharacters(params.query);
  }
}

class SearchCharactersParams extends Equatable {
  final String query;

  const SearchCharactersParams({required this.query});

  @override
  List<Object> get props => [query];
}
