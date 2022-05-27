import 'dart:convert';
import 'package:http/http.dart' as http;


import 'data_model.dart';




 Future<List<User>> fetchUsers() async {

    var data = await http.get(Uri.https('randomuser.me', "api",{"results": "20"}));

    var jsonData = json.decode(data.body);

    List<User> users = [];

    var results = jsonData["results"];
    // print(results);

    for(var u in results){

      User user = User(u["name"]["first"], u["email"], u["phone"], u["picture"]['large']);
      users.add(user);
      print(users.length);
    }
    return users;

  }


