import 'package:dio/dio.dart';
import 'package:second_task/API_todo_list/model/todo_obj.dart';


class TODOSApi {
  static Future<List> getCharacters() async {
    Response response = await Dio()
        .get("https://jsonplaceholder.typicode.com/todos/");
    List data = response.data.map((i) => todo_obj.fromJson(i)).toList();

    return data;
  }
}