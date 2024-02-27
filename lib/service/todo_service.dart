import 'package:dio/dio.dart';
import 'package:bloc_rp/models/user.dart'
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

  void request() async {
    User response;
    response = await dio.get('https://jsonplaceholder.typicode.com/');
    print(response.data.toString());
    // The below request is the same as above.
    response = await dio.get(
      '/post',

    );
    print(response.data.toString());
}