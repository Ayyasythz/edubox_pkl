import 'dart:convert';
import 'package:edubox_pkl/entity/login_model.dart';
import 'package:edubox_pkl/entity/users.dart';
import 'package:edubox_pkl/utils/constant.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

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

   Future<bool> doLogin(email, password) async {
    Response response = await Client().post("${Constant.baseUrl}/api/login",
        headers: getDefaultHeader(),
        body: json.encode({"email": email, "password": password}));

    Login login;
    print(response.body);
    if (response.statusCode == 200) {
      login = new Login.fromJson(json.decode(response.body));
      // await Preferences().saveToken(login);
    }

    return login != null;
  }

dynamic getDefaultHeader() {
    return {'Content-Type': 'application/json'};
  }
  
}
