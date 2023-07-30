// ignore_for_file: prefer_typing_uninitialized_variables

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

class ApiFailureResponse {
  // final statusCode;
  // ApiFailureResponse({required this.statusCode});
  ApiFailure getApiFailureResponse(int statusCode) {
    if (statusCode == 500) {
      return ApiFailure(message: 'Server Error');
    }
    if (statusCode == 401) {
      return ApiFailure(message: 'Server Error');
    }
    if (statusCode == 404) {
      return ApiFailure(message: 'Not Found');
    }
    return ApiFailure(message: 'UnKnown Error');
  }
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
