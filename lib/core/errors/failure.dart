import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            "Connection timed out. Please check your internet connection and try again.");
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            "Request timed out while sending data. Please check your network connection.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            "Server response timed out. Please try again later.");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            "Invalid server certificate detected. Please verify the server's security certificate.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            "Request was cancelled. Please try again when ready.");
      case DioExceptionType.connectionError:
        return ServerFailure(
            "Connection failed. Please check your internet connection and server availability.");
      case DioExceptionType.unknown:
        return ServerFailure(
            "An unexpected error occurred. Please try again later.");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          "Your request was not found , please try again later or check your request");
    } else if (statusCode == 500) {
      return ServerFailure(
          "There is a problem with server , please try again later or check your request");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure("There is an Error , Please Try Again");
    }
  }
}

// class CacheFailure extends Failure {}

// class NetworkFailure extends Failure {}
