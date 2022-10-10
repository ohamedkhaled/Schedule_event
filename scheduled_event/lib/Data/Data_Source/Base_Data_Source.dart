import 'package:scheduled_event/Core/utils/Api_Helper/Api.dart';
import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';
import 'package:scheduled_event/Data/Model/Event_Model.dart';

abstract class BaseDataSource {
  Future<List<EventModel>> getEventFromApi(int id, int page, String? Date);
}

class DataSourceImp extends BaseDataSource {
  @override
  Future<List<EventModel>> getEventFromApi(
      int id, int page, String? Date) async {
    List<dynamic> jasonData = await Api().Get(
        Url: ConstentApi().getEventUrl(id, page), Token: ConstentApi.token);

    List<EventModel> listEventModel = [];

    for (int i = 0; i < jasonData.length; i++) {
      listEventModel.add(EventModel.fromjason(jasonData[i]));
    }

    return listEventModel;
  }
}
