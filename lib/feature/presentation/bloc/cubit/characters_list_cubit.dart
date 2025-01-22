// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/errors/failure.dart';

import 'package:rick_and_morty/feature/domain/entities/character_entity.dart';
import 'package:rick_and_morty/feature/domain/usecases/get_all_characters.dart';

part 'characters_list_state.dart';

class CharactersListCubit extends Cubit<CharactersListState> {
  final GetAllCharacters getAllCharacters;
  CharactersListCubit({required this.getAllCharacters})
      : super(CharactersListEmptyState());

  int page = 1;

  void loadCharacters() async {
    if (state is CharactersListLoadingState) return;
    final currentState = state;
    List<CharacterEntity> oldCharacters = [];
    if (currentState is CharactersListLoadedState) {
      oldCharacters = currentState.charactersList;
    }

    emit(CharactersListLoadingState(oldCharacters, isFirstFetch: page == 1));

    final failureOrCharacters =
        await getAllCharacters(GetAllCharactersParams(page: page));
    emit(failureOrCharacters.fold((failure) {
      if (oldCharacters.isEmpty) {
        return CharactersListErrorState(message: _mapFailureToMessage(failure));
      } else {
        return CharactersListLoadedState(oldCharacters);
      }
    }, (data) {
      page++;
      final characters =
          (state as CharactersListLoadingState).oldCharactersList;
      characters.addAll(data);
      return CharactersListLoadedState(characters);
    }));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure) {
      case ServerFailure _:
        return 'Server Failure';
      case CacheFailure _:
        return 'Cache failure';
      default:
        return 'Failure';
    }
  }
}
