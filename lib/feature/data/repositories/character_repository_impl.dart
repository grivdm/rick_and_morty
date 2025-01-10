import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/errors/exception.dart';
import 'package:rick_and_morty/core/errors/failure.dart';
import 'package:rick_and_morty/core/platform/network_info.dart';
import 'package:rick_and_morty/feature/data/datasources/local_datasource.dart';
import 'package:rick_and_morty/feature/data/datasources/remote_datasource.dart';
import 'package:rick_and_morty/feature/data/models/character_model.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/domain/repositories/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharactersRemoteDatasource remoteDatasource;
  final CharactersLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  CharacterRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CharacterEntity>>> getAllCharacters(
      int page) async {
    return _getCharacters(() {
      return remoteDatasource.getAllCharacters(page);
    });
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> searchCharacters(
      String query) async {
    return _getCharacters(() {
      return remoteDatasource.searchCharacters(query);
    });
  }

  Future<Either<Failure, List<CharacterEntity>>> _getCharacters(
      Future<List<CharacterModel>> Function() getRemoteCharacters) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCharacters = await getRemoteCharacters();
        localDatasource.charactersToCache(remoteCharacters);
        return Right(remoteCharacters);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localCharacters =
            await localDatasource.getLastCharactersFromCahce();
        return Right(localCharacters);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
