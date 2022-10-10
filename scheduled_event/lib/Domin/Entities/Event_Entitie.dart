import 'package:equatable/equatable.dart';

import 'User_Entitie.dart';

class EventEntitie extends Equatable {
  final String imageKey;
  final String eventName;
  final int spots;
  final int id;
  final int price;
  final String address;
  final String startDate;
  final String? finshDate;
  final List<UserEntitie> userList;
  final String Icon;
  final String tagName;
  final bool? paymentMethod;

  EventEntitie({
    required this.imageKey,
    required this.eventName,
    required this.spots,
    required this.id,
    required this.price,
    required this.address,
    required this.startDate,
    this.finshDate,
    required this.userList,
    required this.Icon,
    required this.tagName,
    this.paymentMethod,
  });

  @override
  List<Object?> get props => [
        imageKey,
        eventName,
        spots,
        id,
        price,
        address,
        startDate,
        finshDate,
        userList,
        Icon,
        tagName,
        paymentMethod
      ];
}
