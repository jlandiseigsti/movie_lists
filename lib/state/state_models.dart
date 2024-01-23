import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_lists/models/models.dart';

part 'state_models.freezed.dart';

@freezed
abstract class AccountState with _$AccountState{
  const factory AccountState({
    String? username,
    String? email,
    String? password,
    String? token,
  }) = _AccountState;
}

@freezed
abstract class MovieState with _$MovieState{
  const factory MovieState({
    @Default([]) List<Movie> favorites,
    @Default([]) List<Movie> watchlist,
    Movie? selectedMovie,
  }) = _MovieState;
}