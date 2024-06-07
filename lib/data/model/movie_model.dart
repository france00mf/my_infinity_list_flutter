import 'package:my_infinity_list_flutter/domain/entities/movies.dart';

class MovieModel extends Movie{
  MovieModel({required super.tmdbID, required super.title, required super.posterUrl, required super.backdropUrl, required super.voteAverage, required super.releaseDate, required super.overview, required super.isMovie});
  
}