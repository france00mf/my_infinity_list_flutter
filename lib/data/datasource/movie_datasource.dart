
abstract class MoviesDatasource{
  Future<void> getAllPopularMovies(int page);
}

class MoviesRemoteDatasource extends MoviesDatasource{
  @override
  Future<void> getAllPopularMovies(int page) {
    
    throw UnimplementedError();
  }

}