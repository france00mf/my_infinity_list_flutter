import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_infinity_list_flutter/errors/failure.dart';


class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}


abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}