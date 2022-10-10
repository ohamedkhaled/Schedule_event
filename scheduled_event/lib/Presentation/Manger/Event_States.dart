import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:scheduled_event/Core/utils/Api_Helper/enums.dart';
import 'package:scheduled_event/Domin/Entities/Event_Entitie.dart';

class EventStates extends Equatable {
  final List<EventEntitie> events;
  final RequestState eventsState;
  final String messageEvent;

  const EventStates(
      {this.events = const [],
      this.eventsState = RequestState.loading,
      this.messageEvent = ""});

  EventStates copyWith(
      {List<EventEntitie>? events,
      RequestState? eventsState,
      String? messageEvent}) {
    return EventStates(
        events: events ?? this.events,
        eventsState: eventsState ?? this.eventsState,
        messageEvent: messageEvent ?? this.messageEvent);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [events, EventStates, messageEvent];
}
