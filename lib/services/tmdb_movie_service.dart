import 'dart:convert';
import 'dart:developer';

import 'package:movie_lists/env/env.dart';
import 'package:movie_lists/models/models.dart';
import 'package:movie_lists/state/account_state.dart';

import 'movie_service.dart';
import 'http_service.dart';
import 'package:riverpod/riverpod.dart';

class TmbdMovieService extends MovieService {
  TmbdMovieService(
    this.ref, {
    this.baseHeader,
  });

  final Ref ref;
  final Map<String, String>? baseHeader;

  @override
  Future<Movie> getDetails(int movieId) async {
    try {
      final response = await ref.watch(baseClient).get(
            Uri.parse('${Env.baseUrl}/movie/$movieId'),
            headers: baseHeader,
          );
      final responseJson = jsonDecode(response.body);
      return Movie.fromJson(responseJson);
    } catch (e) {
      log(e.toString());
      throw Error();
    }
  }

  @override
  Future<List<Movie>> getFavoriteMovies() {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getWatchlistMovies() {
    throw UnimplementedError();
  }

  @override
  Future<String> getImages(int movieId) async {
    try {
      final response = await ref
          .watch(baseClient)
          .get(Uri.parse('${Env.baseUrl}/movie/$movieId/images'));
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } catch (e) {
      log(e.toString());
      return '';
    }
  }

  @override
  Future<bool> addToFavorites(int movieId) async {
    try {
      final accountId = ref.watch(accountStateProvider).value!.accountId;
      final response = await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/account/$accountId/favorite'),
          body: {
            'media_type': 'movie',
            'media_id': movieId,
            'favorite': 'true',
          });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Future<bool> removeFromFavorites(int movieId) async {
    try {
      final response = await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/account/{account_id}/favorite'),
          body: {
            'media_type': 'movie',
            'media_id': movieId,
            'favorite': 'true',
          });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Future<bool> addToWatchlist(int movieId) async {
    try {
      final response = await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/account/{account_id}/watchlist'),
          body: {
            'media_type': 'movie',
            'media_id': movieId,
            'watchlist': 'true',
          });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Future<bool> removeFromWatchlist(int movieId) async {
    try {
      final response = await ref.watch(baseClient).post(
          Uri.parse('${Env.baseUrl}/account/{account_id}/watchlist'),
          body: {
            'media_type': 'movie',
            'media_id': movieId,
            'watchlist': 'false',
          });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}

final movieServiceProvider = Provider<MovieService>((ref) {
  final accountState = ref.watch(accountStateProvider).value;
  final baseHeader = (accountState != null && accountState.accountId != null) ?{
    "Authorization":
        "Bearer ${ref.watch(accountStateProvider).value!.sessionId}",
    "accept": "application/json"
  } : null;
  return TmbdMovieService(ref, baseHeader: baseHeader);
});
