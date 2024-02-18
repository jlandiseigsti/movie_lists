import 'package:movie_lists/models/models.dart';
import 'package:movie_lists/services/tmdb_movie_service.dart';
import 'package:movie_lists/state/state_models.dart';
import 'package:riverpod/riverpod.dart';

class MovieStateNotifier extends AsyncNotifier<MovieState> {
  @override
  MovieState build() => const MovieState();

  Future<void> addToFavorites(int movieId) async {
    final previousState = state.value;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(movieServiceProvider).addToFavorites(movieId);
      final newFavorites =
          await ref.read(movieServiceProvider).getFavoriteMovies();
      return previousState!.copyWith(
        favorites: [...newFavorites],
      );
    });
  }

  Future<void> removeFromFavorites(Movie movie) async {
    final previousState = state.valueOrNull;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(movieServiceProvider).removeFromFavorites(movie.id);
      final newFavorites =
          await ref.read(movieServiceProvider).getFavoriteMovies();
      return previousState!.copyWith(
        favorites: [...newFavorites],
      );
    });
  }

  Future<void> addToWatchlist(int movieId) async {
    final previousState = state.value;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(movieServiceProvider).addToWatchlist(movieId);
      final newWatchlist =
          await ref.read(movieServiceProvider).getWatchlistMovies();
      return previousState!.copyWith(
        watchlist: [...newWatchlist],
      );
    });
  }

  Future<void> removeWatchlist(int movieId) async {
    final previousState = state.value;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(movieServiceProvider).addToWatchlist(movieId);
      final newWatchlist =
          await ref.read(movieServiceProvider).getWatchlistMovies();
      return previousState!.copyWith(
        watchlist: [...newWatchlist],
      );
    });
  }

  Future<void> getSelectedMovie(int movieId) async {
    final previousState = state.value;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final movie = await ref.read(movieServiceProvider).getDetails(movieId);
      return previousState!.copyWith(
        selectedMovie: movie,
      );
    });
  }
}

final movieStateProvider =
    AsyncNotifierProvider<MovieStateNotifier, MovieState>(() {
  return MovieStateNotifier();
});
