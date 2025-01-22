// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchCharactersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchCharactersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchCharactersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchCharactersEvent value)
        searchCharactersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchCharactersEvent value)? searchCharactersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchCharactersEvent value)? searchCharactersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCharactersEventImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchCharactersEventImplCopyWith(
          _$SearchCharactersEventImpl value,
          $Res Function(_$SearchCharactersEventImpl) then) =
      __$$SearchCharactersEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCharactersEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchCharactersEventImpl>
    implements _$$SearchCharactersEventImplCopyWith<$Res> {
  __$$SearchCharactersEventImplCopyWithImpl(_$SearchCharactersEventImpl _value,
      $Res Function(_$SearchCharactersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCharactersEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCharactersEventImpl implements SearchCharactersEvent {
  const _$SearchCharactersEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchCharactersEvent(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersEventImplCopyWith<_$SearchCharactersEventImpl>
      get copyWith => __$$SearchCharactersEventImplCopyWithImpl<
          _$SearchCharactersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchCharactersEvent,
  }) {
    return searchCharactersEvent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchCharactersEvent,
  }) {
    return searchCharactersEvent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchCharactersEvent,
    required TResult orElse(),
  }) {
    if (searchCharactersEvent != null) {
      return searchCharactersEvent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchCharactersEvent value)
        searchCharactersEvent,
  }) {
    return searchCharactersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchCharactersEvent value)? searchCharactersEvent,
  }) {
    return searchCharactersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchCharactersEvent value)? searchCharactersEvent,
    required TResult orElse(),
  }) {
    if (searchCharactersEvent != null) {
      return searchCharactersEvent(this);
    }
    return orElse();
  }
}

abstract class SearchCharactersEvent implements SearchEvent {
  const factory SearchCharactersEvent(final String query) =
      _$SearchCharactersEventImpl;

  @override
  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCharactersEventImplCopyWith<_$SearchCharactersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchCharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)
        loading,
    required TResult Function(List<CharacterEntity> charactersList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult? Function(List<CharacterEntity> charactersList)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult Function(List<CharacterEntity> charactersList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCharactersEmptyState value) empty,
    required TResult Function(_SearchCharactersLoadingState value) loading,
    required TResult Function(_SearchCharactersLoadedState value) loaded,
    required TResult Function(_SearchCharactersErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCharactersEmptyState value)? empty,
    TResult? Function(_SearchCharactersLoadingState value)? loading,
    TResult? Function(_SearchCharactersLoadedState value)? loaded,
    TResult? Function(_SearchCharactersErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCharactersEmptyState value)? empty,
    TResult Function(_SearchCharactersLoadingState value)? loading,
    TResult Function(_SearchCharactersLoadedState value)? loaded,
    TResult Function(_SearchCharactersErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCharactersStateCopyWith<$Res> {
  factory $SearchCharactersStateCopyWith(SearchCharactersState value,
          $Res Function(SearchCharactersState) then) =
      _$SearchCharactersStateCopyWithImpl<$Res, SearchCharactersState>;
}

/// @nodoc
class _$SearchCharactersStateCopyWithImpl<$Res,
        $Val extends SearchCharactersState>
    implements $SearchCharactersStateCopyWith<$Res> {
  _$SearchCharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchCharactersEmptyStateImplCopyWith<$Res> {
  factory _$$SearchCharactersEmptyStateImplCopyWith(
          _$SearchCharactersEmptyStateImpl value,
          $Res Function(_$SearchCharactersEmptyStateImpl) then) =
      __$$SearchCharactersEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchCharactersEmptyStateImplCopyWithImpl<$Res>
    extends _$SearchCharactersStateCopyWithImpl<$Res,
        _$SearchCharactersEmptyStateImpl>
    implements _$$SearchCharactersEmptyStateImplCopyWith<$Res> {
  __$$SearchCharactersEmptyStateImplCopyWithImpl(
      _$SearchCharactersEmptyStateImpl _value,
      $Res Function(_$SearchCharactersEmptyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchCharactersEmptyStateImpl implements _SearchCharactersEmptyState {
  const _$SearchCharactersEmptyStateImpl();

  @override
  String toString() {
    return 'SearchCharactersState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)
        loading,
    required TResult Function(List<CharacterEntity> charactersList) loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult? Function(List<CharacterEntity> charactersList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult Function(List<CharacterEntity> charactersList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCharactersEmptyState value) empty,
    required TResult Function(_SearchCharactersLoadingState value) loading,
    required TResult Function(_SearchCharactersLoadedState value) loaded,
    required TResult Function(_SearchCharactersErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCharactersEmptyState value)? empty,
    TResult? Function(_SearchCharactersLoadingState value)? loading,
    TResult? Function(_SearchCharactersLoadedState value)? loaded,
    TResult? Function(_SearchCharactersErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCharactersEmptyState value)? empty,
    TResult Function(_SearchCharactersLoadingState value)? loading,
    TResult Function(_SearchCharactersLoadedState value)? loaded,
    TResult Function(_SearchCharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersEmptyState implements SearchCharactersState {
  const factory _SearchCharactersEmptyState() =
      _$SearchCharactersEmptyStateImpl;
}

/// @nodoc
abstract class _$$SearchCharactersLoadingStateImplCopyWith<$Res> {
  factory _$$SearchCharactersLoadingStateImplCopyWith(
          _$SearchCharactersLoadingStateImpl value,
          $Res Function(_$SearchCharactersLoadingStateImpl) then) =
      __$$SearchCharactersLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterEntity> oldCharactersList, bool isFirstFetch});
}

/// @nodoc
class __$$SearchCharactersLoadingStateImplCopyWithImpl<$Res>
    extends _$SearchCharactersStateCopyWithImpl<$Res,
        _$SearchCharactersLoadingStateImpl>
    implements _$$SearchCharactersLoadingStateImplCopyWith<$Res> {
  __$$SearchCharactersLoadingStateImplCopyWithImpl(
      _$SearchCharactersLoadingStateImpl _value,
      $Res Function(_$SearchCharactersLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldCharactersList = null,
    Object? isFirstFetch = null,
  }) {
    return _then(_$SearchCharactersLoadingStateImpl(
      oldCharactersList: null == oldCharactersList
          ? _value._oldCharactersList
          : oldCharactersList // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      isFirstFetch: null == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchCharactersLoadingStateImpl
    implements _SearchCharactersLoadingState {
  const _$SearchCharactersLoadingStateImpl(
      {required final List<CharacterEntity> oldCharactersList,
      required this.isFirstFetch})
      : _oldCharactersList = oldCharactersList;

  final List<CharacterEntity> _oldCharactersList;
  @override
  List<CharacterEntity> get oldCharactersList {
    if (_oldCharactersList is EqualUnmodifiableListView)
      return _oldCharactersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldCharactersList);
  }

  @override
  final bool isFirstFetch;

  @override
  String toString() {
    return 'SearchCharactersState.loading(oldCharactersList: $oldCharactersList, isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersLoadingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._oldCharactersList, _oldCharactersList) &&
            (identical(other.isFirstFetch, isFirstFetch) ||
                other.isFirstFetch == isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_oldCharactersList), isFirstFetch);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersLoadingStateImplCopyWith<
          _$SearchCharactersLoadingStateImpl>
      get copyWith => __$$SearchCharactersLoadingStateImplCopyWithImpl<
          _$SearchCharactersLoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)
        loading,
    required TResult Function(List<CharacterEntity> charactersList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading(oldCharactersList, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult? Function(List<CharacterEntity> charactersList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(oldCharactersList, isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult Function(List<CharacterEntity> charactersList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldCharactersList, isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCharactersEmptyState value) empty,
    required TResult Function(_SearchCharactersLoadingState value) loading,
    required TResult Function(_SearchCharactersLoadedState value) loaded,
    required TResult Function(_SearchCharactersErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCharactersEmptyState value)? empty,
    TResult? Function(_SearchCharactersLoadingState value)? loading,
    TResult? Function(_SearchCharactersLoadedState value)? loaded,
    TResult? Function(_SearchCharactersErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCharactersEmptyState value)? empty,
    TResult Function(_SearchCharactersLoadingState value)? loading,
    TResult Function(_SearchCharactersLoadedState value)? loaded,
    TResult Function(_SearchCharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersLoadingState implements SearchCharactersState {
  const factory _SearchCharactersLoadingState(
      {required final List<CharacterEntity> oldCharactersList,
      required final bool isFirstFetch}) = _$SearchCharactersLoadingStateImpl;

  List<CharacterEntity> get oldCharactersList;
  bool get isFirstFetch;

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCharactersLoadingStateImplCopyWith<
          _$SearchCharactersLoadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCharactersLoadedStateImplCopyWith<$Res> {
  factory _$$SearchCharactersLoadedStateImplCopyWith(
          _$SearchCharactersLoadedStateImpl value,
          $Res Function(_$SearchCharactersLoadedStateImpl) then) =
      __$$SearchCharactersLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterEntity> charactersList});
}

/// @nodoc
class __$$SearchCharactersLoadedStateImplCopyWithImpl<$Res>
    extends _$SearchCharactersStateCopyWithImpl<$Res,
        _$SearchCharactersLoadedStateImpl>
    implements _$$SearchCharactersLoadedStateImplCopyWith<$Res> {
  __$$SearchCharactersLoadedStateImplCopyWithImpl(
      _$SearchCharactersLoadedStateImpl _value,
      $Res Function(_$SearchCharactersLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charactersList = null,
  }) {
    return _then(_$SearchCharactersLoadedStateImpl(
      charactersList: null == charactersList
          ? _value._charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
    ));
  }
}

/// @nodoc

class _$SearchCharactersLoadedStateImpl
    implements _SearchCharactersLoadedState {
  const _$SearchCharactersLoadedStateImpl(
      {required final List<CharacterEntity> charactersList})
      : _charactersList = charactersList;

  final List<CharacterEntity> _charactersList;
  @override
  List<CharacterEntity> get charactersList {
    if (_charactersList is EqualUnmodifiableListView) return _charactersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersList);
  }

  @override
  String toString() {
    return 'SearchCharactersState.loaded(charactersList: $charactersList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._charactersList, _charactersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_charactersList));

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersLoadedStateImplCopyWith<_$SearchCharactersLoadedStateImpl>
      get copyWith => __$$SearchCharactersLoadedStateImplCopyWithImpl<
          _$SearchCharactersLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)
        loading,
    required TResult Function(List<CharacterEntity> charactersList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(charactersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult? Function(List<CharacterEntity> charactersList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(charactersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult Function(List<CharacterEntity> charactersList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(charactersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCharactersEmptyState value) empty,
    required TResult Function(_SearchCharactersLoadingState value) loading,
    required TResult Function(_SearchCharactersLoadedState value) loaded,
    required TResult Function(_SearchCharactersErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCharactersEmptyState value)? empty,
    TResult? Function(_SearchCharactersLoadingState value)? loading,
    TResult? Function(_SearchCharactersLoadedState value)? loaded,
    TResult? Function(_SearchCharactersErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCharactersEmptyState value)? empty,
    TResult Function(_SearchCharactersLoadingState value)? loading,
    TResult Function(_SearchCharactersLoadedState value)? loaded,
    TResult Function(_SearchCharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersLoadedState implements SearchCharactersState {
  const factory _SearchCharactersLoadedState(
          {required final List<CharacterEntity> charactersList}) =
      _$SearchCharactersLoadedStateImpl;

  List<CharacterEntity> get charactersList;

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCharactersLoadedStateImplCopyWith<_$SearchCharactersLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCharactersErrorStateImplCopyWith<$Res> {
  factory _$$SearchCharactersErrorStateImplCopyWith(
          _$SearchCharactersErrorStateImpl value,
          $Res Function(_$SearchCharactersErrorStateImpl) then) =
      __$$SearchCharactersErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchCharactersErrorStateImplCopyWithImpl<$Res>
    extends _$SearchCharactersStateCopyWithImpl<$Res,
        _$SearchCharactersErrorStateImpl>
    implements _$$SearchCharactersErrorStateImplCopyWith<$Res> {
  __$$SearchCharactersErrorStateImplCopyWithImpl(
      _$SearchCharactersErrorStateImpl _value,
      $Res Function(_$SearchCharactersErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchCharactersErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCharactersErrorStateImpl implements _SearchCharactersErrorState {
  const _$SearchCharactersErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchCharactersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCharactersErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCharactersErrorStateImplCopyWith<_$SearchCharactersErrorStateImpl>
      get copyWith => __$$SearchCharactersErrorStateImplCopyWithImpl<
          _$SearchCharactersErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)
        loading,
    required TResult Function(List<CharacterEntity> charactersList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult? Function(List<CharacterEntity> charactersList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            List<CharacterEntity> oldCharactersList, bool isFirstFetch)?
        loading,
    TResult Function(List<CharacterEntity> charactersList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchCharactersEmptyState value) empty,
    required TResult Function(_SearchCharactersLoadingState value) loading,
    required TResult Function(_SearchCharactersLoadedState value) loaded,
    required TResult Function(_SearchCharactersErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchCharactersEmptyState value)? empty,
    TResult? Function(_SearchCharactersLoadingState value)? loading,
    TResult? Function(_SearchCharactersLoadedState value)? loaded,
    TResult? Function(_SearchCharactersErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchCharactersEmptyState value)? empty,
    TResult Function(_SearchCharactersLoadingState value)? loading,
    TResult Function(_SearchCharactersLoadedState value)? loaded,
    TResult Function(_SearchCharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchCharactersErrorState implements SearchCharactersState {
  const factory _SearchCharactersErrorState({required final String message}) =
      _$SearchCharactersErrorStateImpl;

  String get message;

  /// Create a copy of SearchCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCharactersErrorStateImplCopyWith<_$SearchCharactersErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
