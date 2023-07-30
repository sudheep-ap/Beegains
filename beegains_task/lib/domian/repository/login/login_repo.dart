import 'package:beegains_task/domian/models/login/login_model.dart';
import 'package:dartz/dartz.dart';

import '../../../core/api_status.dart';

abstract class LoginRepository {
  Future<Either<ApiFailure, LoginModel>> checkLogin(
      String userName, String userPassword);
}
