
import 'package:dartz/dartz.dart';
import 'package:scheduled_event/Data/Data_Source/Base_Data_Source.dart';
import 'package:scheduled_event/Domin/Entities/Event_Entitie.dart';
import 'package:scheduled_event/Domin/repository/Base_Repository.dart';

class RepositoryImp extends BaseRepository {

  BaseDataSource baseDataSource ;


  RepositoryImp({required this.baseDataSource});

  @override
  Future<Either<List<EventEntitie>, Exception>> getEvent(int id, int page, String? Date) async {

   try{
   return left(await baseDataSource.getEventFromApi(id, page, Date));
   }catch(e){
    return Right( Exception(e.toString()));
   }
  }


}