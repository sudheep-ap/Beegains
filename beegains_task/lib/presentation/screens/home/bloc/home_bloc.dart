import 'dart:async';

import 'package:beegains_task/domian/models/home/home_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../core/api_status.dart';
import '../../../../data/repository/home/home_repository.dart';
import '../../../../domian/repository/home/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late HomeRepository _homeRepository;

  HomeBloc() : super(HomeState.initial()) {
    on<OnInitialLoadEvent>(fetchHomeEquiryData);
  }

  FutureOr<void> fetchHomeEquiryData(
      OnInitialLoadEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(homeEnquiryState: AppStatus.loading));
    _homeRepository = HomeRepositoryImp();
    final response = await _homeRepository.getEnquiryData();
    response.fold(
      (failure) {
        return emit(state.copyWith(homeEnquiryState: AppStatus.failure));
      },
      (data) {
        return emit(state.copyWith(
            homeEnquiryModel: data, homeEnquiryState: AppStatus.success));
      },
    );
  }
}
