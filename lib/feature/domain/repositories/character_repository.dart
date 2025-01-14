import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/errors/failure.dart';

import '../entities/character_entity.dart';

abstract interface class CharacterRepository {
  Future<Either<Failure, List<CharacterEntity>>> getAllCharacters(int page);
  Future<Either<Failure, List<CharacterEntity>>> searchCharacters(
      String query, int page);
}
