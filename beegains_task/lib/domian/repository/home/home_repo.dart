import 'package:beegains_task/domian/models/home/home_model.dart';
import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, HomeEnquiryModel>> getEnquiryData();
}
