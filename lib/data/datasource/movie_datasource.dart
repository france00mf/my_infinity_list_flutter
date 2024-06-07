
import 'package:dio/dio.dart';

abstract class MoviesDatasource{
  Future<void> getAllPopularMovies(int page);
}

class MoviesRemoteDatasource extends MoviesDatasource{
  @override
  Future<void> getAllPopularMovies(int page) async{
    final response = await Dio().get("");
    
    if(response.statusCode==200){
        
    }else{
      throw "Erro do servidor";
    }
    throw UnimplementedError();
  }

}