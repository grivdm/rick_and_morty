import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:rick_and_morty/core/platform/network_info.dart';
import 'package:rick_and_morty/feature/data/datasources/local_datasource.dart';
import 'package:rick_and_morty/feature/data/datasources/remote_datasource.dart';
import 'package:rick_and_morty/feature/data/repositories/character_repository_impl.dart';
import 'package:rick_and_morty/feature/domain/repositories/character_repository.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_characters.dart';
import 'package:rick_and_morty/feature/domain/usecases/search_characters.dart';
import 'package:rick_and_morty/feature/presentation/bloc/cubit/characters_list_cubit.dart';
import 'package:rick_and_morty/feature/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

init() async {
  sl.registerFactory(() => CharactersListCubit(getAllCharacters: sl()));
  sl.registerFactory(() => SearchBloc(searchCharacters: sl()));

  sl.registerLazySingleton<GetAllCharacters>(() => GetAllCharacters(sl()));
  sl.registerLazySingleton<SearchCharacters>(() => SearchCharacters(sl()));

  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(
        remoteDatasource: sl(),
        localDatasource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<CharactersRemoteDatasource>(
      () => CharactersRemoteDatasourceImpl(client: http.Client()));

  sl.registerLazySingleton<CharactersLocalDatasource>(
      () => CharactersLocalDatasourcesImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnection: sl()));

  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnection());

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
