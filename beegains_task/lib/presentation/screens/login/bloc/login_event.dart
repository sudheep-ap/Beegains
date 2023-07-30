part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.onLoginInEvent(String userName, String userPassword) =
      OnLoginEvent;
}
