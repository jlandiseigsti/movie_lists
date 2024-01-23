// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({String? username, String? email, String? password, String? token});
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? email, String? password, String? token});
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? token = freezed,
  }) {
    return _then(_$AccountStateImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.username, this.email, this.password, this.token});

  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? token;

  @override
  String toString() {
    return 'AccountState(username: $username, email: $email, password: $password, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final String? username,
      final String? email,
      final String? password,
      final String? token}) = _$AccountStateImpl;

  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieState {
  List<Movie> get favorites => throw _privateConstructorUsedError;
  List<Movie> get watchlist => throw _privateConstructorUsedError;
  Movie? get selectedMovie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call(
      {List<Movie> favorites, List<Movie> watchlist, Movie? selectedMovie});

  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? watchlist = null,
    Object? selectedMovie = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      watchlist: null == watchlist
          ? _value.watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      selectedMovie: freezed == selectedMovie
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res>? get selectedMovie {
    if (_value.selectedMovie == null) {
      return null;
    }

    return $MovieCopyWith<$Res>(_value.selectedMovie!, (value) {
      return _then(_value.copyWith(selectedMovie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieStateImplCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$MovieStateImplCopyWith(
          _$MovieStateImpl value, $Res Function(_$MovieStateImpl) then) =
      __$$MovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie> favorites, List<Movie> watchlist, Movie? selectedMovie});

  @override
  $MovieCopyWith<$Res>? get selectedMovie;
}

/// @nodoc
class __$$MovieStateImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$MovieStateImpl>
    implements _$$MovieStateImplCopyWith<$Res> {
  __$$MovieStateImplCopyWithImpl(
      _$MovieStateImpl _value, $Res Function(_$MovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? watchlist = null,
    Object? selectedMovie = freezed,
  }) {
    return _then(_$MovieStateImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      watchlist: null == watchlist
          ? _value._watchlist
          : watchlist // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      selectedMovie: freezed == selectedMovie
          ? _value.selectedMovie
          : selectedMovie // ignore: cast_nullable_to_non_nullable
              as Movie?,
    ));
  }
}

/// @nodoc

class _$MovieStateImpl implements _MovieState {
  const _$MovieStateImpl(
      {final List<Movie> favorites = const [],
      final List<Movie> watchlist = const [],
      this.selectedMovie})
      : _favorites = favorites,
        _watchlist = watchlist;

  final List<Movie> _favorites;
  @override
  @JsonKey()
  List<Movie> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<Movie> _watchlist;
  @override
  @JsonKey()
  List<Movie> get watchlist {
    if (_watchlist is EqualUnmodifiableListView) return _watchlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlist);
  }

  @override
  final Movie? selectedMovie;

  @override
  String toString() {
    return 'MovieState(favorites: $favorites, watchlist: $watchlist, selectedMovie: $selectedMovie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality()
                .equals(other._watchlist, _watchlist) &&
            (identical(other.selectedMovie, selectedMovie) ||
                other.selectedMovie == selectedMovie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_watchlist),
      selectedMovie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      __$$MovieStateImplCopyWithImpl<_$MovieStateImpl>(this, _$identity);
}

abstract class _MovieState implements MovieState {
  const factory _MovieState(
      {final List<Movie> favorites,
      final List<Movie> watchlist,
      final Movie? selectedMovie}) = _$MovieStateImpl;

  @override
  List<Movie> get favorites;
  @override
  List<Movie> get watchlist;
  @override
  Movie? get selectedMovie;
  @override
  @JsonKey(ignore: true)
  _$$MovieStateImplCopyWith<_$MovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
