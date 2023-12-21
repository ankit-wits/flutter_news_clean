import 'package:latest_app/core/usecases/usecase.dart';
import 'package:latest_app/features/auth/domain/entities/login_entity.dart';

import '../repositories/login_respository.dart';

/// Use case for logging in a user.
///
/// This use case is responsible for authenticating a user by calling the login method
/// on the provided [LoginRepository]. It takes a [LoginEntity] as input, which contains
/// the user's email and password. If the [LoginEntity] is null or any of its properties
/// are null, empty strings will be used as default values. The login method returns
/// a [Future] that completes with void.
class LoginUseCase implements UseCase<void, LoginEntity> {
  LoginUseCase(this._repository);

  final LoginRepository _repository;

  @override
  Future<void> call({LoginEntity? params}) async {
    return await _repository.login(params?.email ?? "", params?.password ?? "");
  }
}
