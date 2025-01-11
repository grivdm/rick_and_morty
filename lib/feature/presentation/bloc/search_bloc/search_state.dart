part of 'search_bloc.dart';

sealed class SearchCharactersState extends Equatable {
  const SearchCharactersState();

  @override
  List<Object> get props => [];
}

class SearchCharactersEmptyState extends SearchCharactersState {}

class SearchCharactersLoadingState extends SearchCharactersState {}

class SearchCharactersLoadedState extends SearchCharactersState {
  final List<CharacterEntity> characters;

  const SearchCharactersLoadedState({required this.characters});

  @override
  List<Object> get props => [characters];
}

class SearchCharactersErrorState extends SearchCharactersState {
  final String message;

  const SearchCharactersErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
