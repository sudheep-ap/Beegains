import 'dart:convert';
import 'package:beegains_task/domian/models/login/login_model.dart';
import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';
import '../../../domian/repository/login/login_repo.dart';
import 'package:http/http.dart' as http;

class LoginRepositoryImp implements LoginRepository {
  @override
  Future<Either<ApiFailure, LoginModel>> checkLogin(
      String userName, String userPassword) async {
    try {
      http.Response response = await http.post(
          Uri.parse('http://143.110.181.12:7070/api/login'),
          body: {'username': userName, 'password': userPassword});

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        //print(data);
        final loginModelInstance = LoginModel.fromJson(data);
        return loginModelInstance.success == true
            ? right(loginModelInstance)
            : left(ApiFailure(message: loginModelInstance.message));
      } else {
        throw Exception(
            ApiFailureResponse().getApiFailureResponse(response.statusCode));
      }
    } catch (e) {
      return left(ApiFailure(message: e.toString()));
    }
  }
}
