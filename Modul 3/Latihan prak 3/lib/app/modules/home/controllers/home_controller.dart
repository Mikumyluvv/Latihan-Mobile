import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihanmodul3/app/models/todo.dart';
// import 'package:latihan_modul3/app/model/todo.dart';

class HomeController extends GetxController {
  late Future<Todo> data;

  @override
  void onInit() {
    super.onInit();
    data = fetchData();
  }

  Future<Todo> fetchData() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/todos/5"));

    if (response.statusCode == 200) {
      return Todo.fromJson(json.decode(response.body));
    } else {
      throw Exception("Request Failed");
    }
  }
}