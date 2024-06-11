
import 'package:dio/dio.dart';
import 'package:my_infinity_list_flutter/data/model/movie_model.dart';

abstract class MoviesDatasource{
  Future<List<MovieModel>> getAllPopularMovies(int page);
}

class MoviesRemoteDatasource extends MoviesDatasource{
  @override
  Future<List<MovieModel>> getAllPopularMovies(int page) async{
    final response = await Dio().get("https://api.themoviedb.org/3/movie/popular?api_key=62f37b6a721b68095d76716650d201f1&page=$page");
    
    if(response.statusCode==200){
        return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    }else{
      throw "Erro do servidor";
    }
  }

}