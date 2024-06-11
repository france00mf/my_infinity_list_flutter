import 'package:my_infinity_list_flutter/domain/entities/movies.dart';

class MovieModel extends Movie{
  MovieModel({required super.tmdbID, required super.title, required super.posterUrl, required super.backdropUrl, required super.voteAverage, required super.releaseDate, required super.overview, required super.isMovie});
  

  factory MovieModel.fromJson(Map<String,dynamic> json)=> MovieModel(
        tmdbID: json['id'],
        title: json['title'],
        posterUrl: getPosterUrl(json['poster_path']),
        backdropUrl: getBackdropUrl(json['backdrop_path']),
        voteAverage: double.parse((json['vote_average']).toStringAsFixed(1)),
        releaseDate: getDate(json['release_date']),
        overview: json['overview'] ?? '',
        isMovie: true,
        );
}

getPosterUrl(json){
  return json;
}

getBackdropUrl(json){
  return json;
}

getDate(json){
  return json;
}