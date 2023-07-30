part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required HomeEnquiryModel? homeEnquiryModel,
    required AppStatus homeEnquiryState,
  }) = _HomeState;

  factory HomeState.initial() =>
      HomeState(homeEnquiryModel: null, homeEnquiryState: AppStatus.initial);
}
