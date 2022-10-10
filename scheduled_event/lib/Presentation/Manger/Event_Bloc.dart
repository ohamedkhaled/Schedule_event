import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scheduled_event/Core/utils/Api_Helper/enums.dart';
import 'package:scheduled_event/Domin/UseCase/Get_Events_UC.dart';
import 'package:scheduled_event/Presentation/Manger/Event_Events.dart';
import 'package:scheduled_event/Presentation/Manger/Event_States.dart';

class EventBloc extends Bloc<EventsEvents, EventStates> {
  final GetEventsUC getEventsUC;

  EventBloc({required this.getEventsUC}) : super(EventStates()) {
    on<GetEventsEvent>(getEvents);
  }

  FutureOr<void> getEvents(
      GetEventsEvent event, Emitter<EventStates> emit) async {
    final result =
        await getEventsUC.call(Parameters(id: event.id, page: event.page));

    result.fold(
        (l) =>
            emit(state.copyWith(events: l, eventsState: RequestState.loaded)),
        (r) => emit(state.copyWith(
            eventsState: RequestState.loaded, messageEvent: r.toString())));
  }
}
