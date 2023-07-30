part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState(
      {required LoginModel? loginModel,
      required bool success,
      required String message}) = _LoginState;

  factory LoginState.initial() =>
      LoginState(loginModel: null, message: '', success: true);
}
