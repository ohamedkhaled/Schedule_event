import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:scheduled_event/Core/utils/Api_Helper/Constant_Api.dart';


class Api {

  Future<dynamic> Get({required String Url, @required String? Token}) async {
    Map<String, String> headers = {};
    if (Token != null) {
      headers.addAll({
        ConstentApi.authorization: '$Token'
      });
      headers.addAll({
        ConstentApi.contentType:'application/json; charset=UTF-8'
      });
    }

    http.Response response = await http.get(Uri.parse(Url), headers: headers);

    if (response.statusCode == 200) {

      List<dynamic>jsonData = jsonDecode(response.body) ;
      return  jsonData;
    } else {

      throw Exception('there is error and status:${response.body}');

    }
  }


}

