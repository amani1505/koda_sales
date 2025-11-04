import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/customer_model.dart';
import '../models/category_model.dart';
import '../models/message_model.dart';
import '../models/dashboard_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Dashboard
  @GET('/dashboard')
  Future<DashboardModel> getDashboard();

  // Customers
  @GET('/customers')
  Future<CustomerListResponse> getCustomers(
    @Query('page') int page,
    @Query('per_page') int perPage,
    @Query('search') String? search,
  );

  @GET('/customers/{id}')
  Future<CustomerModel> getCustomer(@Path('id') int id);

  @POST('/customers')
  Future<CustomerModel> createCustomer(@Body() Map<String, dynamic> data);

  @PUT('/customers/{id}')
  Future<CustomerModel> updateCustomer(
    @Path('id') int id,
    @Body() Map<String, dynamic> data,
  );

  @DELETE('/customers/{id}')
  Future<void> deleteCustomer(@Path('id') int id);

  // Categories
  @GET('/categories')
  Future<CategoryListResponse> getCategories(
    @Query('page') int? page,
    @Query('per_page') int? perPage,
  );

  @GET('/categories/{id}')
  Future<CategoryModel> getCategory(@Path('id') int id);

  @POST('/categories')
  Future<CategoryModel> createCategory(@Body() Map<String, dynamic> data);

  @PUT('/categories/{id}')
  Future<CategoryModel> updateCategory(
    @Path('id') int id,
    @Body() Map<String, dynamic> data,
  );

  @DELETE('/categories/{id}')
  Future<void> deleteCategory(@Path('id') int id);

  // Messages
  @GET('/messages')
  Future<MessageListResponse> getMessages(
    @Query('page') int page,
    @Query('per_page') int perPage,
  );

  @POST('/messages/send')
  Future<SendMessageResponse> sendMessage(
    @Body() SendMessageRequest request,
  );

  @GET('/messages/chat/{customerId}')
  Future<MessageListResponse> getCustomerMessages(
    @Path('customerId') int customerId,
  );
}
