
import 'package:dio/dio.dart';
import 'package:my_infinity_list_flutter/domain/entities/movies.dart';

abstract class MoviesDatasource{
  Future<List<Movie>> getAllPopularMovies(int page);
}

class MoviesRemoteDatasource extends MoviesDatasource{
  @override
  Future<List<Movie>> getAllPopularMovies(int page) async{
    final response = await Dio().get("");
    
    if(response.statusCode==200){
        return List<Movie>.from((response.data['results'] as List).map((e) => Movie.fromJson(e)));
    }else{
      throw "Erro do servidor";
    }
  }

}