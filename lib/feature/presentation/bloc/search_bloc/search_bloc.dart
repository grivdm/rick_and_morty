import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/core/errors/failure.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/domain/usecases/search_characters.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchCharacters searchCharacters;
  SearchBloc({required this.searchCharacters}) : super(SearchEmptyState()) {
    on<SearchCharactersEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
      SearchCharactersEvent event, Emitter<SearchState> emit) async {
    emit(SearchLoadingState());
    final failureOrCharacter =
        await searchCharacters(SearchCharactersParams(query: event.query));
    emit(failureOrCharacter.fold(
      (failure) => SearchErrorState(message: _mapFailureToMessage(failure)),
      (characters) => SearchCharactersLoadedState(characters: characters),
    ));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure _:
        return 'Server Failure';
      case CacheFailure _:
        return 'Cache failure';
      default:
        return 'Failure';
    }
  }
}
