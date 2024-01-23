abstract class MovieService {
  Future<String> getImages(int movieId);

  // Movie getDetails(String movieId);

  // List<Movie> getFavoriteMovies();

  // List<Movie> getWatchlistMovies();

  Future<bool> addToFavorites(int movieId);

  Future<bool> removeFromFavorites(int movieId);

  Future<bool> addToWatchlist(int movieId);

  Future<bool> removeFromWatchlist(int movieId);
}