import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:tes/auth_models/email.dart';
import 'package:tes/auth_models/password.dart';

class LoginState extends Equatable {
  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.exceptionError,
  });

  final Email email;
  final Password password;
  final FormzStatus status;
  final String? exceptionError;

  @override
  List<Object> get props => [email, password, status];

  LoginState copyWith({
    Email? email,
    Password? password,
    FormzStatus? status,
    String? error,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      exceptionError: error ?? this.exceptionError,
    );
  }
}