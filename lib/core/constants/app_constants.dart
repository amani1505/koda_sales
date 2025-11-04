class AppConstants {
  // API
  static const String baseUrl = 'https://your-api-url.com/api';
  static const String apiVersion = 'v1';
  
  // Endpoints
  static const String loginEndpoint = '/auth/login';
  static const String customersEndpoint = '/customers';
  static const String categoriesEndpoint = '/categories';
  static const String messagesEndpoint = '/messages';
  static const String dashboardEndpoint = '/dashboard';
  
  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String themeKey = 'theme_mode';
  
  // Pagination
  static const int defaultPageSize = 10;
  static const int maxPageSize = 100;
  
  // Timeouts
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // App Info
  static const String appName = 'SMS Management';
  static const String appVersion = '1.0.0';
}
