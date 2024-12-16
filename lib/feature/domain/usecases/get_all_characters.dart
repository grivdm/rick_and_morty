import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:rick_and_morty/core/errors/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';

import '../entities/character_entity.dart';
import '../repositories/character_repository.dart';

class GetAllCharacters
    implements UseCase<List<CharacterEntity>, GetAllCharactersParams> {
  final CharacterRepository characterRepository;
  GetAllCharacters(
    this.characterRepository,
  );

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(
      GetAllCharactersParams params) async {
    return await characterRepository.getAllCharacters(params.page);
  }
}

class GetAllCharactersParams extends Equatable {
  final int page;

  const GetAllCharactersParams({required this.page});

  @override
  List<Object> get props => [page];
}
