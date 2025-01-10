part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchEmptyState extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchCharactersLoadedState extends SearchState {
  final List<CharacterEntity> characters;

  const SearchCharactersLoadedState({required this.characters});

  @override
  List<Object> get props => [characters];
}

class SearchErrorState extends SearchState {
  final String message;

  const SearchErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
