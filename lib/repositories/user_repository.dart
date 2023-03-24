import 'dart:convert';

import 'package:http/http.dart';
import 'package:user_app/models/user_model.dart';

class UserRepository {
  String uri = "https://jsonplaceholder.typicode.com";

  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse('$uri/users'));

    if (response.statusCode == 200) {
      final List users = jsonDecode(response.body);

      return users.map(((user) => UserModel.fromJson(user))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
