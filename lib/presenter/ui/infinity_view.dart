import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_infinity_list_flutter/locator/locator.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_bloc.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_event.dart';
import 'package:my_infinity_list_flutter/presenter/controller/infinity_state.dart';

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
          // return 
      }),
      ),
    );
  }
}