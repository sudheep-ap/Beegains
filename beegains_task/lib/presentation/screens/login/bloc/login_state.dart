part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required LoginModel? loginModel,
    required AppStatus loginState,
  }) = _LoginState;

  factory LoginState.initial() =>
      LoginState(loginModel: null, loginState: AppStatus.initial);
}
