import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_infinity_list_flutter/domain/entities/movies.dart';
import 'package:my_infinity_list_flutter/locator/locator.dart';
import 'package:my_infinity_list_flutter/presenter/components/loading_indicator.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_bloc.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_event.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_state.dart';
import 'package:my_infinity_list_flutter/utils/enums.dart';

class InfinityView extends StatefulWidget {
  const InfinityView({super.key});

  @override
  State<InfinityView> createState() => _InfinityViewState();
}

class _InfinityViewState extends State<InfinityView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<InfinityBloc>()..add(GetInfinityEvent()),
      child: Scaffold(
      body: BlocBuilder<InfinityBloc, InfinityState>(
        
        builder: (context,state){
           switch(state.status){
            case GetAllRequestStatus.loading:
              return LoadingIndicator();
            case GetAllRequestStatus.loaded:
             return Container();
            case GetAllRequestStatus.error:
              return Container();
          
          }
      }), 
      ),
    );
  }
}


class PopularMoviesWidget extends StatelessWidget {
  const PopularMoviesWidget({
    required this.movies,
    super.key,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfinityBloc, InfinityState>(
      builder: (context, state) {
        return VerticalListView(
          itemCount: movies.length + 1,
          itemBuilder: (context, index) {
            if (index < movies.length) {
              return VerticalListViewCard(media: movies[index]);
            } else {
              return const LoadingIndicator();
            }
          },
          addEvent: () {
            context
                .read<InfinityBloc>()
                .add(FetchMoreGetInfinityEvent());
          },
        );
      },
    );
  }
}

