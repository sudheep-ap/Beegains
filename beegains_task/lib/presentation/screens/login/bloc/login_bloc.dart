// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:beegains_task/data/db/functions/db_functions.dart';
import 'package:beegains_task/domian/repository/login/login_repo.dart';
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
        LocalDatabase()
            .addUserDetails(data.data.token, data.data.user.username);
        return emit(
            state.copyWith(loginModel: data, loginState: AppStatus.success));
      },
    );

    // print('----$response');
    // if (response is LoginModel) {
    //   print('---2---');
    //   emit(state.copyWith(
    //       loginModel: response as LoginModel, loginState: AppStatus.success));
    // } else if (response is ApiFailure) {
    //   print('---3---');
    //   emit(state.copyWith(loginState: AppStatus.failure));
    // }
  }
}

  //{
    //
    //
    //
    //emit
    // void getLoginResponse() async {
    //   final response = await loginRepository.checkLogin(
    //       event.userName, event.userPassword);
    // }
    //  });




// @lazySingleton
// class CouponOffersCubit extends Cubit<CouponOffersState> {
//   late CouponOfferRepository _couponOffersRepository;

//   CouponOffersCubit() : super(const CouponOffersState()) {
//     _couponOffersRepository = getIt<CouponOfferRepository>();
//   }

//   void getCouponOffersData(Map<String, dynamic> data) async {
//     emit(state.copyWith(status: ApiStatus.loading));
//     final response = await _couponOffersRepository.getCouponOffers(data);
//     response.fold(
//       (failure) => emit(
//           state.copyWith(status: ApiStatus.failure, message: failure.message)),
//       (data) {
//         return emit(state.copyWith(
//             status: ApiStatus.loadingData, couponOffersData: data));
//       },
//     );
//   }
// }