

import 'package:equatable/equatable.dart';

abstract class InfinityEvent extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}



class GetInfinityEvent extends InfinityEvent{}

class FetchMoreGetInfinityEvent extends InfinityEvent{}



