import 'package:flutter/material.dart';
import 'package:scheduled_event/Presentation/Screens/Home_Screen.dart';
import 'Core/Serveces/Server_Locator.dart';
import 'Core/Theme_Data/Theme_Data.dart';
import 'Core/utils/Constant_App.dart';
import 'Data/Data_Source/Base_Data_Source.dart';
import 'Data/Repository_Imp/Repository_Imp.dart';
import 'Domin/UseCase/Get_Events_UC.dart';
import 'Domin/repository/Base_Repository.dart';

void main() {
  SernerLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  BaseDataSource baseDataSource =DataSourceImp();
  BaseRepository baseRepository = RepositoryImp(baseDataSource: baseDataSource );
  GetEventsUC(baseRepository: baseRepository).call(Parameters(id: 8357, page: 1));
    return MaterialApp(
      title: nameApp,
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      home: const Home_Screen()
    );
  }
}
