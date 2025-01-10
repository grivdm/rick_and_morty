part of 'characters_list_cubit.dart';

sealed class CharactersListState extends Equatable {
  const CharactersListState();

  @override
  List<Object> get props => [];
}

final class CharactersListEmptyState extends CharactersListState {}

final class CharactersListLoadingState extends CharactersListState {
  final List<CharacterEntity> oldCharactersList;
  final bool isFirstFetch;

  const CharactersListLoadingState(this.oldCharactersList,
      {this.isFirstFetch = false});

  @override
  List<Object> get props => [oldCharactersList];
}

final class CharactersListLoadedState extends CharactersListState {
  final List<CharacterEntity> charactersList;

  const CharactersListLoadedState(this.charactersList);

  @override
  List<Object> get props => [charactersList];
}

final class CharactersListErrorState extends CharactersListState {
  final String message;

  const CharactersListErrorState({required this.message});
}
