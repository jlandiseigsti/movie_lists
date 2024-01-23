import 'package:movie_lists/models/models.dart';
import 'package:movie_lists/services/tmdb_movie_service.dart';
import 'package:movie_lists/state/state_models.dart';
import 'package:riverpod/riverpod.dart';

class MovieStateNotifier extends AsyncNotifier<MovieState> {
  @override
  MovieState build() => const MovieState();

  Future<void> addToFavorites(Movie movie) async {
    final previousState = state.valueOrNull;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      ref.read(movieServiceProvider).addToFavorites(movie.id);
      return previousState!.copyWith(
        favorites: [...previousState.favorites, movie],
      );
    });
  }
}