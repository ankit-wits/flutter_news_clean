import 'dart:developer';

import 'package:dio/dio.dart';

/// A class that provides methods for making login API requests.
class LoginApiService {
  LoginApiService(this._dio);

  final Dio _dio;

  /// Makes a login request with the given [username] and [password].
  ///
  /// Throws an [Exception] if the login fails.
  Future<void> login(String username, String password) async {
    log("username-> $username");
    log("password-> $password");
    final response = await _dio.post(
      'https://reqres.in/api/login',
      data: {
        'email': username,
        'password': password,
      },
    );
    if (response.statusCode != 200) {
      throw Exception('Login failed');
    }
  }
}
