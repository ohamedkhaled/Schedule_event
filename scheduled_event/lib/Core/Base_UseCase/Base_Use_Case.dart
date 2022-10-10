import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase <T,Parameter>{


  Future<Either<T,Exception>>call (Parameter parameter);
}

class NoPrameters extends Equatable{

  const NoPrameters();

  @override
  List<Object?> get props =>[];


}