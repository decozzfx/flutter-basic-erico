import 'dart:convert';
import 'package:http/http.dart' as http;

class Users {
  String? id;
  String? name;

  Users({this.id, this.name});

  factory Users.createUser(Map<String, dynamic> object) {
    return Users(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }

  static Future<List<Users>> getUsers(String page) async {
    var apiUrl = Uri.parse('https://reqres.in/api/users?page=' + page);

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    var users = <Users>[];
    for (var i = 0; i < listUser.length; i++) {
      users.add(Users.createUser(listUser[i]));
    }

    return users;
  }
}
