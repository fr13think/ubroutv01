import 'package:ubroutv/data/datasources/db/database_helper.dart';
import 'package:ubroutv/data/datasources/movie_local_data_source.dart';
import 'package:ubroutv/data/datasources/movie_remote_data_source.dart';
import 'package:ubroutv/domain/repositories/movie_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([
  MovieRepository,
  MovieRemoteDataSource,
  MovieLocalDataSource,
  DatabaseHelper,
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
