import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latest_app/features/auth/domain/usecases/login_usecase.dart';

import '../../domain/entities/login_entity.dart';

part 'auth_event.dart';
part 'auth_state.dart';

/// The [AuthBloc] class is responsible for managing the authentication state of the application.
/// It extends the [Bloc] class from the `bloc` package and handles [AuthEvent]s to produce [AuthState]s.
///
/// The [AuthBloc] requires a [LoginUseCase] instance to handle the login functionality.
///
/// Example usage:
/// ```dart
/// final authBloc = AuthBloc(LoginUseCase());
/// ```
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;

  /// Constructs an instance of [AuthBloc] with the provided [LoginUseCase].
  AuthBloc(this._loginUseCase) : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) {
        if (event is LoginEvent) {
          emit(AuthLoading());
          _loginUseCase
              .call(
            params: LoginEntity(
              email: event.email,
              password: event.password,
            ),
          )
              .then((value) {
            emit(AuthSuccess());
          }).catchError((error) {
            emit(AuthFailure(error.toString()));
          });
        }
      },
    );
  }
}
