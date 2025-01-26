
import 'package:dio/dio.dart';

class ApiClass {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiClass(this._dio);

  Future<Map<String,dynamic>> get({required String endpoint}) async {
 var response = await _dio.get('$_baseUrl$endpoint');
    if (response.statusCode == 200) {
      try {
        return response.data;
      } catch (e) {
        print('Error decoding JSON: ${response.data}');
        throw Exception('Expected JSON response but got HTML or text.');
      }
    } else {
      throw Exception(
          'Error with status code ${response.statusCode}: ${response.data}');
    }
  }
}
