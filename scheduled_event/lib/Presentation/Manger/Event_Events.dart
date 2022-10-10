import 'package:equatable/equatable.dart';

abstract class EventsEvents extends Equatable {
  const EventsEvents();
}

class GetEventsEvent extends EventsEvents {
  final int id;
  final int page;
  final String? data;

  const GetEventsEvent({required this.id, required this.page, this.data});

  @override
  List<Object?> get props => [id, page, data];
}
