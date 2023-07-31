import 'dart:convert';
import 'package:beegains_task/domian/models/home/home_model.dart';
import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';
import '../../../domian/repository/home/home_repo.dart';
import 'package:http/http.dart' as http;

import '../../../main.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<Either<ApiFailure, HomeEnquiryModel>> getEnquiryData() async {
    print('=token: ==$custUserToken');
    try {
      http.Response response = await http.get(
        Uri.parse(
            'http://143.110.181.12:7070/api/get_enquiries?page=1&franchise_id=2&search=""&from_date=""&to_date=""&est_status=""&jobcards=0'),
        headers: {
          "Authorization": "Bearer $custUserToken",
        },
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('--------------------');
        print(data);
        final enquiryModelInstance = HomeEnquiryModel.fromJson(data);
        return enquiryModelInstance.success == true
            ? right(enquiryModelInstance)
            : left(ApiFailure(message: enquiryModelInstance.message));
      } else {
        throw Exception(
            ApiFailureResponse().getApiFailureResponse(response.statusCode));
      }
    } catch (e) {
      return left(ApiFailure(message: e.toString()));
    }
  }
}
