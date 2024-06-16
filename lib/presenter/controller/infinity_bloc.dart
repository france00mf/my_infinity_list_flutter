import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_infinity_list_flutter/domain/use_case/movie_use_case.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_event.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_state.dart';

class InfinityBloc extends Bloc<InfinityEvent,InfinityState>{
 final MovieUseCase baseMovieUseCase;
 
  InfinityBloc(this.baseMovieUseCase): super(InfinityState()){
    on<GetInfinityEvent>(_getAllPopularMovies);
    on<FetchMoreGetInfinityEvent>(_fetchMoreMovies);
  }

  Future<void> _getAllPopularMovies(
    GetInfinityEvent event,
    Emitter<InfinityState> emit
  ){
    return Future(() => null);
  }

  Future<void> _fetchMoreMovies(
    FetchMoreGetInfinityEvent event,
    Emitter<InfinityState> emit
  ){
    return Future(() => null);
  }
}