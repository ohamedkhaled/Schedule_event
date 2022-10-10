



import 'package:get_it/get_it.dart';
import 'package:scheduled_event/Data/Data_Source/Base_Data_Source.dart';
import 'package:scheduled_event/Data/Repository_Imp/Repository_Imp.dart';
import 'package:scheduled_event/Domin/UseCase/Get_Events_UC.dart';
import 'package:scheduled_event/Domin/repository/Base_Repository.dart';
import 'package:scheduled_event/Presentation/Manger/Event_Bloc.dart';

final getIt = GetIt.instance;

class SernerLocator {


void  init(){


getIt.registerLazySingleton<BaseDataSource>(() =>DataSourceImp());
getIt.registerLazySingleton<BaseRepository>(() => RepositoryImp(baseDataSource: getIt()));

//useCase
getIt.registerLazySingleton(() => GetEventsUC(baseRepository:  getIt()));

//blocs
  getIt.registerFactory(() => EventBloc(getEventsUC: getIt()));
}




}