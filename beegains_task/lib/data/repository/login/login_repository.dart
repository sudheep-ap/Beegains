import 'dart:convert';

import 'package:beegains_task/domian/models/login/login_model.dart';
import 'package:dartz/dartz.dart';

import '../../../core/app_status.dart';
import '../../../domian/repository/login/login_repo.dart';
import 'package:http/http.dart' as http;

class LoginRepositoryImp implements LoginRepository {
  @override
  Future<Either<ApiFailure, LoginModel>> checkLogin() async {
    try {
      http.Response response = await http.post(Uri.parse(''));
      final data = jsonDecode(response.body);
      final value = LoginModel.fromJson(data);
      return value.success == true
          ? right(value)
          : left(ApiFailure(message: value.message));
    } catch (e) {
      return left(ApiFailure(message: e.toString()));
    }
  }
}
