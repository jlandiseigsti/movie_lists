import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    bool? adult,
    String? backdropPath,
    bool? belongsToCollection,
    int? budget,
    List<Genre>? genres,
    String? homepage,
    required int id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    int? revenue,
    int? runtime,
    String? status,
    String? tagline,
    required String title
  }) = _Movie;
}

@freezed
abstract class Genre with _$Genre {
  const factory Genre({
    int? id,
    String? name,
  }) = _Genre;
}