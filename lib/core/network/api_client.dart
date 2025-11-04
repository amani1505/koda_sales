import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/app_constants.dart';
import '../utils/storage_service.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: AppConstants.connectionTimeout,
      receiveTimeout: AppConstants.receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  // Add interceptors
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Add auth token
        final token = await StorageService.getToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) async {
        // Handle 401 errors
        if (error.response?.statusCode == 401) {
          // Token expired, refresh or logout
          await StorageService.clearToken();
        }
        return handler.next(error);
      },
    ),
  );

  // Add logging interceptor in debug mode
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
  ));

  return dio;
});
