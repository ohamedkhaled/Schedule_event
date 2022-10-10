
import 'package:intl/intl.dart';

import 'Api_Helper/Constant_Api.dart';
import 'Constant_App.dart';

String getFormatDate(String time ) {
  DateTime dt = DateTime.parse(time);
  return DateFormat(formatDate).format(dt);
}

String getDayNumber(String time){
  DateTime dt = DateTime.parse(time);
  return DateFormat.d().format(dt);
}

String getDay(String time){
  DateTime dt = DateTime.parse(time);
  return DateFormat.EEEE().format(dt);
}

String getMonth(String time){
  DateTime dt = DateTime.parse(time);
  return DateFormat.LLL().format(dt);
}
String getYear(String time){
  DateTime dt = DateTime.parse(time);
  return DateFormat.y().format(dt);
}


List getListOfMapEvent(List listEvent){
   List listOfMap =[];
  for(int i=0 ;i<listEvent.length;i++) {
    late Map result= { event:listEvent[i]  ,date:listEvent[i].startDate} ;
    listOfMap.add(result);
  }
  return listOfMap ;
}

String getDayLeft(String startTime,String finshTime){
  if(finshTime==ConstentApi.unlimited){
    return ConstentApi.unlimited ;
  }
  DateTime sTime = DateTime.parse(startTime);
  DateTime fTime = DateTime.parse(finshTime);
  int sday =int.parse(DateFormat('dd').format(sTime));
  int smonth =int.parse(DateFormat.M().format(sTime));
  int fday =int.parse(DateFormat('dd').format(fTime));
  int fmonth =int.parse(DateFormat.M().format(fTime));
  String result = ((fday-sday)+(fmonth-smonth)*30).toString() ;
  return '$result $dayLeft' ;
}