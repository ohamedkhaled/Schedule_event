
import 'package:dartz/dartz.dart';
import 'package:scheduled_event/Domin/Entities/Event_Entitie.dart';

abstract class BaseRepository {


  Future<Either<List<EventEntitie>,Exception>> getEvent(int id,int page, String? Date);

}