import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_infinity_list_flutter/domain/use_case/movie_use_case.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_event.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_state.dart';
import 'package:my_infinity_list_flutter/utils/enums.dart';

class InfinityBloc extends Bloc<InfinityEvent,InfinityState>{
 final MovieUseCase _baseMovieUseCase;
 
  InfinityBloc(this._baseMovieUseCase): super(InfinityState()){
    on<GetInfinityEvent>(_getAllPopularMovies);
    on<FetchMoreGetInfinityEvent>(_fetchMoreMovies);
  }

  int page =1;

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

  Future<void> _getMovies(Emitter<InfinityState> emit) async{
    final result = await _baseMovieUseCase(page);
    result.fold((l) => 
    emit(
      state.copyWith(
        status: GetAllRequestStatus.error
      )
    ), (r) {
      page++;
      return emit(
         state.copyWith(
          status: GetAllRequestStatus.loaded,
          movies: state.movies + r,
         )
      );
    });

  }
}