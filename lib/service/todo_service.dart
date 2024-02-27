import 'package:dio/dio.dart';

import '../models/user.dart';
class TodoService {
  // Future<bool> logOut() async {
  //   try{
  //     await _client.post(Endpoint.authLogout, data: {Keys.refresh: Preferences.getString(Keys.refreshToken)});
  //     return true;
  //   } on DioError catch (e) {
  //     final msg = errorHandling(e);
  //     throw CustomException(msg);
  //   }
  // }
  final dio = Dio();

  Future<List<User>> getTodos() async {
     final res = await dio.get('https://jsonplaceholder.typicode.com/todos');
     final todos = res.data as List;
     return todos.map((e) => User(userId: e['userId'], id: e['id'], title: e['title'], completed:e['completed'] )).toList();
  }

}
