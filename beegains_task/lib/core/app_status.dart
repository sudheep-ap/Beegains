enum AppStatus {
  initial,
  loading,
  success,
  failure,
}

class ApiFailure {
  final String message;
  ApiFailure({required this.message});
}


//     if (e.response?.statusCode == 500) {
//       return ApiFailure('Server Error');
//     }
//     if (e.response?.statusCode == 401) {
//       return ApiFailure('Server Error');
//     }
//     if (e.response?.statusCode == 404) {
//       return ApiFailure('Not Found');
//     }
// }
