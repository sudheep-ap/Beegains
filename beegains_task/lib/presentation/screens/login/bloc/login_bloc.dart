// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:beegains_task/data/db/functions/db_functions.dart';
import 'package:beegains_task/domian/repository/login/login_repo.dart';
import 'package:beegains_task/main.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/api_status.dart';
import '../../../../data/repository/login/login_repository.dart';
import '../../../../domian/models/login/login_model.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late LoginRepository _loginRepository;

  LoginBloc() : super(LoginState.initial()) {
    on<OnLoginEvent>(getLoginResponse);
  }

  FutureOr<void> getLoginResponse(
      OnLoginEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWith(loginState: AppStatus.loading));
    _loginRepository = LoginRepositoryImp();
    final response =
        await _loginRepository.checkLogin(event.userName, event.userPassword);
    response.fold(
      (failure) {
        return emit(state.copyWith(loginState: AppStatus.failure));
      },
      (data) {
        custUserToken = data.data.token;
        custUserName = data.data.user.username;
        LocalDatabase()
            .addUserDetails(data.data.token, data.data.user.username);
        return emit(
            state.copyWith(loginModel: data, loginState: AppStatus.success));
      },
    );
  }
}
