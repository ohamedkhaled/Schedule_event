import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';
import 'package:scheduled_event/Presentation/Components/Custom_Card.dart';
import 'package:scheduled_event/Presentation/Components/Custom_Header_Widget.dart';
import 'package:scheduled_event/Presentation/Manger/Event_Bloc.dart';
import 'package:scheduled_event/Presentation/Manger/Event_States.dart';
import '../../Core/utils/Api_Helper/enums.dart';
import '../../Core/utils/Config_Size.dart';
import '../../Core/utils/Constant_App.dart';
import '../../Core/utils/Methods.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventStates>(
        buildWhen: (previous, current) =>
            previous.eventsState != current.eventsState,
        builder: (BuildContext context, state) {
          switch (state.eventsState) {
            case RequestState.loaded:
              return GroupedListView<dynamic, String>(
                  elements: getListOfMapEvent(state.events),
                  groupBy: (element) => element[date],
                  groupComparator: (value1, value2) => value2.compareTo(value1),
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  groupSeparatorBuilder: (String value) =>
                      CustomHeaderWidget(time: value),
                  itemBuilder: (c, element) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomCard(
                          tagName: element[event].tagName,
                          spots: element[event].spots,
                          image:
                              ConstentApi().getImage(element[event].imageKey),
                          tagIcon: "football_icon.jpg",
                          finshDate: element[event].finshDate,
                          address: element[event].address,
                          eventName: element[event].eventName,
                          startDate: element[event].startDate,
                          price: element[event].price,
                          Users: element[event].userList,
                        ),
                      ],
                    );
                  });
            case RequestState.loading:
              return SizedBox(
                height: ConfigSize.screenHeight,
                child: Center(child: CircularProgressIndicator()),
              );
            case RequestState.error:
              return SizedBox(
                  height: ConfigSize.screenHeight,
                  child: Center(child: Text(state.messageEvent)));
          }
        });
  }
}
//
