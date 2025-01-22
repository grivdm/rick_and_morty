part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchCharactersEvent(String query) =
      SearchCharactersEvent;
}

// sealed class SearchEvent extends Equatable {
//   const SearchEvent();

//   @override
//   List<Object> get props => [];
// }

// class SearchCharactersEvent extends SearchEvent {
//   final String query;

//   const SearchCharactersEvent(this.query);
// }
