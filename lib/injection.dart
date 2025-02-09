import 'package:ubroutv/data/datasources/db/database_helper.dart';
import 'package:ubroutv/data/datasources/movie_local_data_source.dart';
import 'package:ubroutv/data/datasources/movie_remote_data_source.dart';
import 'package:ubroutv/data/repositories/movie_repository_impl.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';
import 'package:ubroutv/domain/usecases/get_movie_detail.dart';
import 'package:ubroutv/domain/usecases/get_movie_recommendations.dart';
import 'package:ubroutv/domain/usecases/get_now_playing_movies.dart';
import 'package:ubroutv/domain/usecases/get_popular_movies.dart';
import 'package:ubroutv/domain/usecases/get_top_rated_movies.dart';
import 'package:ubroutv/domain/usecases/get_watchlist_movies.dart';
import 'package:ubroutv/domain/usecases/get_watchlist_status.dart';
import 'package:ubroutv/domain/usecases/remove_watchlist.dart';
import 'package:ubroutv/domain/usecases/save_watchlist.dart';
import 'package:ubroutv/domain/usecases/search_movies.dart';
import 'package:ubroutv/presentation/provider/movie_detail_notifier.dart';
import 'package:ubroutv/presentation/provider/movie_list_notifier.dart';
import 'package:ubroutv/presentation/provider/movie_search_notifier.dart';
import 'package:ubroutv/presentation/provider/popular_movies_notifier.dart';
import 'package:ubroutv/presentation/provider/top_rated_movies_notifier.dart';
import 'package:ubroutv/presentation/provider/watchlist_movie_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => MovieListNotifier(
      getNowPlayingMovies: locator(),
      getPopularMovies: locator(),
      getTopRatedMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => MovieDetailNotifier(
      getMovieDetail: locator(),
      getMovieRecommendations: locator(),
      getWatchListStatus: locator(),
      saveWatchlist: locator(),
      removeWatchlist: locator(),
    ),
  );
  locator.registerFactory(
    () => MovieSearchNotifier(
      searchMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => PopularMoviesNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TopRatedMoviesNotifier(
      getTopRatedMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => WatchlistMovieNotifier(
      getWatchlistMovies: locator(),
    ),
  );

  // use case
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetTopRatedMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieRecommendations(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));
  locator.registerLazySingleton(() => GetWatchListStatus(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlistMovies(locator()));

  // repository
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(client: locator()));
  locator.registerLazySingleton<MovieLocalDataSource>(
      () => MovieLocalDataSourceImpl(databaseHelper: locator()));

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // external
  locator.registerLazySingleton(() => http.Client());
}
