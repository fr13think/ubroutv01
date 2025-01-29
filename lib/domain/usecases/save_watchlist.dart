import 'package:dartz/dartz.dart';
import 'package:ubroutv/common/failure.dart';
import 'package:ubroutv/domain/entities/movie_detail.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';

class SaveWatchlist {
  final MovieRepository repository;

  SaveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(MovieDetail movie) {
    return repository.saveWatchlist(movie);
  }
}
