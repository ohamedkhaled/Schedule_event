
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:scheduled_event/Core/Base_UseCase/Base_Use_Case.dart';
import 'package:scheduled_event/Domin/Entities/Event_Entitie.dart';
import 'package:scheduled_event/Domin/repository/Base_Repository.dart';

class GetEventsUC extends BaseUseCase<List<EventEntitie>,Parameters>{

final BaseRepository baseRepository ;


GetEventsUC({ required this.baseRepository});

  @override
  Future<Either<List<EventEntitie>, Exception>> call(Parameters parameter) async {
  final result = await baseRepository.getEvent( parameter.id,parameter.page, parameter.currentDate);

  print(result);
  return result ;
  }

}



class Parameters extends Equatable {
  final int id ;
  final int page;
  final String? currentDate;

  const Parameters({required this.id,this.currentDate,required this.page});

  @override
  List<Object?> get props => [id,page,currentDate];

}