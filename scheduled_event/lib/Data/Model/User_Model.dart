import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';
import 'package:scheduled_event/Domin/Entities/User_Entitie.dart';

class UserModel extends UserEntitie {
  UserModel({required super.id, required super.imageKey});

  factory UserModel.fromjason(Map<String, dynamic> jasonData) {
    return UserModel(
        id: jasonData[ConstentApi.id],
        imageKey: jasonData[ConstentApi.profilePicture]??ConstentApi.defultProfilPic);
  }
}
