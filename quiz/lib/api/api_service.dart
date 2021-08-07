import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quizz/models/createRequest.dart';
import 'package:quizz/models/loginModel.dart';
import 'package:quizz/models/users.dart';
import 'package:shared_preferences/shared_preferences.dart';

class APIService {
  Future<Users> login(LoginRequestModel requestModel) async {
    print("Test");
    print(requestModel);
    Users user;
    Uri url = Uri.parse(
        "https://quizzapi.xyz/api/login"); //essa é a url que comunica com o servidor
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200) {
      var retorno = jsonDecode(response.body);
      user = Users.fromJson(retorno);
      var prefs = await SharedPreferences.getInstance();
      // prefs.setString("tokenjwt", user.token);
      prefs.setString("key", json.encode(retorno));
      return user;
    }
    if (response.statusCode == 401) {
      user = null;
    } else {
      throw Exception('failed to load Data');
    }
    return user;
  }

  Future<Users> create(CreateRequest createModel) async {
    print("Test");
    print(createModel);
    Users user;
    Uri url = Uri.parse(
        "https://quizzapi.xyz/api/users"); //essa é a url que comunica com o servidor
    final response = await http.post(url, body: createModel.toJson());
    if (response.statusCode == 200) {
      var retorno = jsonDecode(response.body);
      user = Users.fromJson(retorno);
      var prefs = await SharedPreferences.getInstance();
      // prefs.setString("tokenjwt", user.token);
      prefs.setString("key", json.encode(retorno));
      return user;
    }
    if (response.statusCode == 401) {
      user = null;
    } else {
      throw Exception('failed to load Data');
    }
    return user;
  }
}
