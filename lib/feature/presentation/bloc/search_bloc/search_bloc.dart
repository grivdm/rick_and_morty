import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/core/errors/failure.dart';
import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/domain/usecases/search_characters.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchCharactersBloc extends Bloc<SearchEvent, SearchCharactersState> {
  SearchCharacters searchCharacters;
  SearchCharactersBloc({required this.searchCharacters})
      : super(SearchCharactersEmptyState()) {
    on<SearchCharactersEvent>(_onEvent);
  }

  int page = 1;
  String query = '';

  FutureOr<void> _onEvent(
      SearchCharactersEvent event, Emitter<SearchCharactersState> emit) async {
    if (state is SearchCharactersLoadingState) return;

    final currentState = state;
    List<CharacterEntity> oldCharacters = [];
    if (query != event.query) {
      query = event.query;
      page = 1;
      oldCharacters.clear();
    } else if (currentState is SearchCharactersLoadedState) {
      oldCharacters = currentState.charactersList;
    }

    emit(SearchCharactersLoadingState(oldCharacters, isFirstFetch: page == 1));
    final failureOrCharacter = await searchCharacters(
        SearchCharactersParams(query: event.query, page: page));
    emit(failureOrCharacter.fold(
      (failure) =>
          SearchCharactersErrorState(message: _mapFailureToMessage(failure)),
      (newCharacters) {
        page++;
        oldCharacters.addAll(newCharacters);
        return SearchCharactersLoadedState(charactersList: oldCharacters);
      },
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
