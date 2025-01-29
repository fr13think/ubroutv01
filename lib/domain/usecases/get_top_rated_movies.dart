import 'package:dartz/dartz.dart';
import 'package:ubroutv/common/failure.dart';
import 'package:ubroutv/domain/entities/movie.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';

class GetTopRatedMovies {
  final MovieRepository repository;

  GetTopRatedMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getTopRatedMovies();
  }
}
