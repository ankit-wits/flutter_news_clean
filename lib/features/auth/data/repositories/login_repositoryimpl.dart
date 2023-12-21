import 'dart:developer';

import 'package:latest_app/features/auth/data/datasources/login_remote.dart';

import '../../domain/repositories/login_respository.dart';

/// Implementation of the [LoginRepository] interface.
/// This repository is responsible for handling login operations.
class LoginRepositoryImpl implements LoginRepository {
  final LoginApiService _apiService;

  LoginRepositoryImpl(this._apiService);

  @override
  Future<void> login(String username, String password) {
    log("username-> $username");
    log("password-> $password");
    return _apiService.login(username, password);
  }
}
