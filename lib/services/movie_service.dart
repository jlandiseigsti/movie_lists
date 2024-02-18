import 'package:movie_lists/models/models.dart';

abstract class MovieService {
  Future<String> getImages(int movieId);

  Future<Movie> getDetails(int movieId);

  Future<List<Movie>> getFavoriteMovies();

  Future<List<Movie>> getWatchlistMovies();

  Future<bool> addToFavorites(int movieId);

  Future<bool> removeFromFavorites(int movieId);

  Future<bool> addToWatchlist(int movieId);

  Future<bool> removeFromWatchlist(int movieId);
}