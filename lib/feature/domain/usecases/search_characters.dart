// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    return await characterRepository.searchCharacters(
        params.query, params.page);
  }
}

class SearchCharactersParams extends Equatable {
  final String query;
  final int page;

  const SearchCharactersParams({
    required this.query,
    required this.page,
  });

  @override
  List<Object> get props => [query];
}
