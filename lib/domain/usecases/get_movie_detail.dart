import 'package:dartz/dartz.dart';
import 'package:ubroutv/domain/entities/movie_detail.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';
import 'package:ubroutv/common/failure.dart';

class GetMovieDetail {
  final MovieRepository repository;

  GetMovieDetail(this.repository);

  Future<Either<Failure, MovieDetail>> execute(int id) {
    return repository.getMovieDetail(id);
  }
}
