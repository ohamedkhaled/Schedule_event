import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scheduled_event/Core/Resours_Manger/Color_Manger.dart';
import 'package:scheduled_event/Core/Resours_Manger/Values_Manger.dart';
import 'package:scheduled_event/Presentation/Manger/Event_Bloc.dart';
import 'package:scheduled_event/Presentation/Manger/Event_Events.dart';
import '../../Core/Serveces/Server_Locator.dart';
import '../../Core/utils/Config_Size.dart';
import '../../Core/utils/Constant_App.dart';
import '../Components/Home_Screen_Body.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return BlocProvider(
        create: (BuildContext context) =>
            getIt<EventBloc>()..add(const GetEventsEvent(id: id, page: page)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(nameApp),
            leading: Icon(Icons.arrow_circle_left,
                color: ColorManager.darkGrey,
                size: ConfigSize.defaultSize! * AppSize.s4),
          ),
          body: const HomeScreenBody(),
        ));
  }
}
