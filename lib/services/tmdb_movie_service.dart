import 'dart:convert';
import 'dart:developer';

import 'package:movie_lists/env/env.dart';

import 'movie_service.dart';
import 'http_service.dart';
import 'package:riverpod/riverpod.dart';

class TmbdMovieService extends MovieService {
  TmbdMovieService(this.ref);

  final Ref ref;

  @override
  Future<String> getImages(int movieId) async { 
    try {
      final response = await ref.watch(baseClient).get(Uri.parse('${Env.baseUrl}/movie/$movieId/images'));
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } 
    catch (e) {
      log(e.toString());
      return '';
    }
  }

  @override
  Future<bool> addToFavorites(int movieId) async {
    try {
      //TODO Put in the account id
      final response = await ref.watch(baseClient).post(Uri.parse('${Env.baseUrl}/account/{account_id}/favorite'), body: {
        'media_type': 'movie',
        'media_id': movieId,
        'favorite': 'true',
      });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } 
    catch (e) {
      log(e.toString());
      return false;
    }
  }

    @override
  Future<bool> removeFromFavorites(int movieId) async {
    try {      
      final response = await ref.watch(baseClient).post(Uri.parse('${Env.baseUrl}/account/{account_id}/favorite'), body: {
        'media_type': 'movie',
        'media_id': movieId,
        'favorite': 'true',
      });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } 
    catch (e) {
      log(e.toString());
      return false;
    }
  }


  @override
  Future<bool> addToWatchlist(int movieId) async {
    try {
      final response = await ref.watch(baseClient).post(Uri.parse('${Env.baseUrl}/account/{account_id}/watchlist'), body: {
        'media_type': 'movie',
        'media_id': movieId,
        'watchlist': 'true',
      });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } 
    catch (e) {
      log(e.toString());
      return false;
    }
  }

    @override
  Future<bool> removeFromWatchlist(int movieId) async {
    try {
            final response = await ref.watch(baseClient).post(Uri.parse('${Env.baseUrl}/account/{account_id}/watchlist'), body: {
        'media_type': 'movie',
        'media_id': movieId,
        'watchlist': 'false',
      });
      final responseJson = jsonDecode(response.body);
      return responseJson['posters'][0]['file_path'];
    } 
    catch (e) {
      log(e.toString());
      return false;
    }
  }

}

final movieServiceProvider = Provider<MovieService>((ref) => TmbdMovieService(ref));