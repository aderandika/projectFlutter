import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../config/app_constants.dart';
import '../config/app_request.dart';
import '../config/app_response.dart';
import '../config/failure.dart';

class UserDatasource {
  static Future<Either<Failure, Map>> login(
    String email,
    String password,
  ) async {
    Uri url = Uri.parse('${AppConstants.baseURL}/login');
    try {
      final response = await http.post(
        url,
        headers: AppRequest.header(),
        // Harus sesuai dengan backend yang ada di laravel
        body: {
          'email': email,
          'password': password,
        },
      );
      final data = AppResponse.data(response);
      return right(data);
    } catch (e) {
      if (e is Failure) {
        return left(e);
      }
      return Left(FetchFailure(e.toString()));
    }
  }

  static Future<Either<Failure, Map>> register(
    String username,
    String email,
    String password,
  ) async {
    Uri url = Uri.parse('${AppConstants.baseURL}/register');
    try {
      final response = await http.post(
        url,
        headers: AppRequest.header(),
        // Harus sesuai dengan backend yang ada di laravel
        body: {
          'username': username,
          'email': email,
          'password': password,
        },
      );
      final data = AppResponse.data(response);
      return right(data);
    } catch (e) {
      if (e is Failure) {
        return left(e);
      }
      return Left(FetchFailure(e.toString()));
    }
  }
}
