
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_infinity_list_flutter/data/datasource/movie_datasource.dart';
import 'package:my_infinity_list_flutter/data/model/movie_model.dart';
import 'package:my_infinity_list_flutter/domain/repository/movide_repository.dart';
import 'package:my_infinity_list_flutter/errors/exceptions.dart';
import 'package:my_infinity_list_flutter/errors/failure.dart';

class MoviesRepositoryImpl implements MovieRepository{
  final MoviesDatasource _baseMoviesRemoteDataSource;

  MoviesRepositoryImpl(this._baseMoviesRemoteDataSource);
  
  @override
  Future<Either<Failure, List<MovieModel>>> getAllMovie(int page) async{
      await _baseMoviesRemoteDataSource.getAllPopularMovies(page);
    try {
      final result= await _baseMoviesRemoteDataSource.getAllPopularMovies(page);
      return Right(result);
    }on ServerException catch (e) {
        throw Left(ServerFailure(e.errorMessageModel.statusMessage));
    } on DioError catch(failure){
      throw Left(ServerFailure(failure.message!));
    }
    


  }
}