
import 'package:dartz/dartz.dart';
import 'package:my_infinity_list_flutter/domain/entities/movies.dart';
import 'package:my_infinity_list_flutter/domain/repository/movide_repository.dart';
import 'package:my_infinity_list_flutter/errors/failure.dart';
import 'package:my_infinity_list_flutter/usecase/base_use_case.dart';

class MovieUseCase implements BaseUseCase<List<Movie>, int>{
  final MovieRepository baseRepository;
  MovieUseCase(this.baseRepository);
  @override
  Future<Either<Failure, List<Movie>>> call(p) async{
    return await baseRepository.getAllMovie(p);    
  }

}