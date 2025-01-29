import 'package:dartz/dartz.dart';
import 'package:ubroutv/domain/entities/movie.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';
import 'package:ubroutv/common/failure.dart';

class GetNowPlayingMovies {
  final MovieRepository repository;

  GetNowPlayingMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getNowPlayingMovies();
  }
}
