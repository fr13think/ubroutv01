// Mocks generated by Mockito 5.0.8 from annotations
// in ubroutv/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:convert' as _i18;
import 'dart:typed_data' as _i19;

import 'package:dartz/dartz.dart' as _i2;
import 'package:ubroutv/common/failure.dart' as _i8;
import 'package:ubroutv/data/datasources/db/database_helper.dart' as _i15;
import 'package:ubroutv/data/datasources/movie_local_data_source.dart' as _i13;
import 'package:ubroutv/data/datasources/movie_remote_data_source.dart' as _i11;
import 'package:ubroutv/data/models/movie_detail_model.dart' as _i3;
import 'package:ubroutv/data/models/movie_model.dart' as _i12;
import 'package:ubroutv/data/models/movie_table.dart' as _i14;
import 'package:ubroutv/domain/entities/movie.dart' as _i9;
import 'package:ubroutv/domain/entities/movie_detail.dart' as _i10;
import 'package:ubroutv/domain/repositories/movie_repository.dart' as _i6;
import 'package:http/src/base_request.dart' as _i20;
import 'package:http/src/client.dart' as _i17;
import 'package:http/src/response.dart' as _i4;
import 'package:http/src/streamed_response.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite_common/sqlite_api.dart' as _i16;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeMovieDetailResponse extends _i1.Fake
    implements _i3.MovieDetailResponse {}

class _FakeResponse extends _i1.Fake implements _i4.Response {}

class _FakeStreamedResponse extends _i1.Fake implements _i5.StreamedResponse {}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i6.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
              returnValue:
                  Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
                      _FakeEither<_i8.Failure, List<_i9.Movie>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(Invocation.method(#getPopularMovies, []),
              returnValue:
                  Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
                      _FakeEither<_i8.Failure, List<_i9.Movie>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither<_i8.Failure, List<_i9.Movie>>())) as _i7.Future<
          _i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>> getMovieDetail(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
              returnValue:
                  Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>.value(
                      _FakeEither<_i8.Failure, _i10.MovieDetail>()))
          as _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getMovieRecommendations(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
              returnValue:
                  Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
                      _FakeEither<_i8.Failure, List<_i9.Movie>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> searchMovies(
          String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
              returnValue:
                  Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
                      _FakeEither<_i8.Failure, List<_i9.Movie>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> saveWatchlist(
          _i10.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [movie]),
              returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
                  _FakeEither<_i8.Failure, String>()))
          as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> removeWatchlist(
          _i10.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
              returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
                  _FakeEither<_i8.Failure, String>()))
          as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
              returnValue:
                  Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
                      _FakeEither<_i8.Failure, List<_i9.Movie>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i11.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i12.MovieModel>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
              returnValue:
                  Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
          as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> getPopularMovies() => (super.noSuchMethod(
          Invocation.method(#getPopularMovies, []),
          returnValue: Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
      as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
          Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
      as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
              returnValue: Future<_i3.MovieDetailResponse>.value(
                  _FakeMovieDetailResponse()))
          as _i7.Future<_i3.MovieDetailResponse>);
  @override
  _i7.Future<List<_i12.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
              returnValue:
                  Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
          as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
              returnValue:
                  Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
          as _i7.Future<List<_i12.MovieModel>>);
}

/// A class which mocks [MovieLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieLocalDataSource extends _i1.Mock
    implements _i13.MovieLocalDataSource {
  MockMovieLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<String> insertWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<String> removeWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i14.MovieTable?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
              returnValue: Future<_i14.MovieTable?>.value())
          as _i7.Future<_i14.MovieTable?>);
  @override
  _i7.Future<List<_i14.MovieTable>> getWatchlistMovies() => (super.noSuchMethod(
          Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<List<_i14.MovieTable>>.value(<_i14.MovieTable>[]))
      as _i7.Future<List<_i14.MovieTable>>);
}

/// A class which mocks [DatabaseHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i15.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i16.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
              returnValue: Future<_i16.Database?>.value())
          as _i7.Future<_i16.Database?>);
  @override
  _i7.Future<int> insertWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<int> removeWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
              returnValue: Future<Map<String, dynamic>?>.value())
          as _i7.Future<Map<String, dynamic>?>);
  @override
  _i7.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
              returnValue: Future<List<Map<String, dynamic>>>.value(
                  <Map<String, dynamic>>[]))
          as _i7.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i17.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i4.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i19.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i19.Uint8List>.value(_i19.Uint8List(0)))
          as _i7.Future<_i19.Uint8List>);
  @override
  _i7.Future<_i5.StreamedResponse> send(_i20.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i5.StreamedResponse>.value(_FakeStreamedResponse()))
          as _i7.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}
