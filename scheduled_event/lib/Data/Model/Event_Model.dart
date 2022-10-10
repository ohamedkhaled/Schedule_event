import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';
import 'package:scheduled_event/Data/Model/User_Model.dart';
import 'package:scheduled_event/Domin/Entities/Event_Entitie.dart';

class EventModel extends EventEntitie {
  EventModel(
      {required super.imageKey,
      required super.eventName,
      required super.spots,
      required super.id,
      required super.price,
      required super.address,
      required super.startDate,
       required super.userList,
      required super.tagName,
  required super.Icon,
  super.paymentMethod,
       super.finshDate}) ;

  factory EventModel.fromjason(Map<String, dynamic> jasonData) {
    return EventModel(
        imageKey: jasonData[ConstentApi.featuredImage],
        eventName: jasonData[ConstentApi.title],
        spots: jasonData[ConstentApi.spots],
        id: jasonData[ConstentApi.id],
        price: jasonData[ConstentApi.price],
        address: jasonData[ConstentApi.placeName],
        startDate: jasonData[ConstentApi.date],
        finshDate: jasonData[ConstentApi.finishDate]??ConstentApi.unlimited,
        tagName: jasonData[ConstentApi.tag][ConstentApi.titleTag],
        Icon: jasonData[ConstentApi.tag][ConstentApi.icon],
        paymentMethod: jasonData[ConstentApi.paymentMethod]??false,
        userList: List<UserModel>.from(
            jasonData[ConstentApi.users].map((e) => UserModel.fromjason(e)))  );
  }
}
