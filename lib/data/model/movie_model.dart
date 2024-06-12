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

var moviePlaceHolder="https://davidkoepp.com/wp-content/themes/blankslate/images/Movie%20Placeholder.jpg";

getPosterUrl(path){
  var basePosterUrl="https://image.tmdb.org/t/p/w500";
  if (path != null) {
    return basePosterUrl + path;
  } else {
    return moviePlaceHolder;
  }
}

getBackdropUrl(path){
  var baseBackdropUrl="https://image.tmdb.org/t/p/w1280";
    if (path != null) {
    return baseBackdropUrl + path;
  } else {
    return moviePlaceHolder;
  }
}

getDate(date){
  if (date == null || date.isEmpty) {
    return '';
  }

  final vals = date.split('-');
  String year = vals[0];
  int monthNb = int.parse(vals[1]);
  String day = vals[2];

  String month = '';

  switch (monthNb) {
    case 1:
      month = 'Jan';
      break;
    case 2:
      month = 'Feb';
      break;
    case 3:
      month = 'Mar';
      break;
    case 4:
      month = 'Apr';
      break;
    case 5:
      month = 'May';
      break;
    case 6:
      month = 'Jun';
      break;
    case 7:
      month = 'Jul';
      break;
    case 8:
      month = 'Aug';
      break;
    case 9:
      month = 'Sep';
      break;
    case 10:
      month = 'Oct';
      break;
    case 11:
      month = 'Nov';
      break;
    case 12:
      month = 'Dec';
      break;
    default:
      break;
  }

  return '$month $day, $year';
}