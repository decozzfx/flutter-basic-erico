import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult {
  late String id;
  late String name;
  late String job;
  late String createdAt;

  PostResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.createdAt});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createdAt: object['createdAt']);
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    var apiURL = 'https://reqres.in/api/users';

    var apiResult =
        await http.post(Uri.parse(apiURL), body: {'name': name, 'job': job});

    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
