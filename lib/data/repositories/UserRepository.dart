import 'package:users/data/model/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserRepository {
  final _count = 100;
  final _url = 'https://randomuser.me/api?results=100';

  Future<List<User>> getAll() async {
    final response = await http.get(_url);
    final raw = jsonDecode(response.body)['results'].toList();
    final users = List<User>();
    raw.forEach((item) => users.add(User.fromJSON(item)));
    return users;
  }
}
