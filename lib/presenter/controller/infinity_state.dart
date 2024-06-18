


import 'package:equatable/equatable.dart';
import 'package:my_infinity_list_flutter/domain/entities/movies.dart';
import 'package:my_infinity_list_flutter/utils/enums.dart';

class InfinityState extends Equatable{
  final List<Movie> movies;
  final GetAllRequestStatus status;
  final String message;

  const InfinityState(
    {
       this.movies = const [],
    this.status = GetAllRequestStatus.loading,
    this.message = '',
    }
  );

  InfinityState copyWith({
    List<Movie>? movies,
    GetAllRequestStatus? status,
    String? message,
  }) => InfinityState(message: message ?? this.message, status: status ??this.status, movies: movies?? this.movies);



  @override
  // TODO: implement props
  List<Object?> get props => [
        movies,
        status,
        message,
  ];

}

