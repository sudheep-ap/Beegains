import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../domian/models/login/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<OnLoginEvent>((event, emit) {
      // TODO: implement event handler

      //
      //
      //
      //emit
    });
  }
}




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