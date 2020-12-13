import 'dart:convert';
import 'package:edubox_pkl/entity/users.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String url = 'https://reqres.in/api/users/';

  static Future<List<Datum>> getUsers() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final User users = User.fromJson(json.decode(response.body));
        return users.data;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
  
}
