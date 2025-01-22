part of 'search_bloc.dart';

@freezed
class SearchCharactersState with _$SearchCharactersState {
  const factory SearchCharactersState.empty() = _SearchCharactersEmptyState;
  const factory SearchCharactersState.loading(
      {required List<CharacterEntity> oldCharactersList,
      required bool isFirstFetch}) = _SearchCharactersLoadingState;
  const factory SearchCharactersState.loaded(
          {required List<CharacterEntity> charactersList}) =
      _SearchCharactersLoadedState;
  const factory SearchCharactersState.error({required String message}) =
      _SearchCharactersErrorState;
}

// sealed class SearchCharactersState extends Equatable {
//   const SearchCharactersState();

//   @override
//   List<Object> get props => [];
// }

// class SearchCharactersEmptyState extends SearchCharactersState {}

// class SearchCharactersLoadingState extends SearchCharactersState {
//   final List<CharacterEntity> oldCharactersList;
//   final bool isFirstFetch;

//   const SearchCharactersLoadingState(this.oldCharactersList,
//       {this.isFirstFetch = false});

//   @override
//   List<Object> get props => [oldCharactersList];
// }

// class SearchCharactersLoadedState extends SearchCharactersState {
//   final List<CharacterEntity> charactersList;

//   const SearchCharactersLoadedState({required this.charactersList});

//   @override
//   List<Object> get props => [charactersList];
// }

// class SearchCharactersErrorState extends SearchCharactersState {
//   final String message;

//   const SearchCharactersErrorState({required this.message});

//   @override
//   List<Object> get props => [message];
// }
