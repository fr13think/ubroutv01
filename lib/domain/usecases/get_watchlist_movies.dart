import 'package:dartz/dartz.dart';
import 'package:ubroutv/domain/entities/movie.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';
import 'package:ubroutv/common/failure.dart';

class GetWatchlistMovies {
  final MovieRepository _repository;

  GetWatchlistMovies(this._repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return _repository.getWatchlistMovies();
  }
}
