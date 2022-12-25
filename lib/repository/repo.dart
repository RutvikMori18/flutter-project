import 'dart:convert';

import 'package:bloc_example/model/UsetDataModel.dart';
import 'package:http/http.dart';

class Userdata {
  String api = 'https://reqres.in/api/users?page=2';

  Future<List<UserDataModel>> userData() async {
    Response response = await get(Uri.parse(api));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => UserDataModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
