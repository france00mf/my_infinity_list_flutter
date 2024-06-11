
import 'package:dartz/dartz.dart';
import 'package:my_infinity_list_flutter/data/model/movie_model.dart';
import 'package:my_infinity_list_flutter/errors/failure.dart';

abstract class MovieRepository{
  Future<Either<Failure, List<MovieModel>>> getAllMovie(int page);
}