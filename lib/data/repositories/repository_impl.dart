import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/api_client.dart';
import '../datasources/api_service.dart';
import '../datasources/dummy_data_service.dart';
import '../models/customer_model.dart';
import '../models/category_model.dart';
import '../models/message_model.dart';
import '../models/dashboard_model.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return DashboardRepository(ref.watch(apiServiceProvider));
});

final customerRepositoryProvider = Provider<CustomerRepository>((ref) {
  return CustomerRepository(ref.watch(apiServiceProvider));
});

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository(ref.watch(apiServiceProvider));
});

final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  return MessageRepository(ref.watch(apiServiceProvider));
});

class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);

  Future<DashboardModel> getDashboard() async {
    try {
      return await _apiService.getDashboard();
    } catch (e) {
      return DummyDataService.getDummyDashboard();
    }
  }
}

class CustomerRepository {
  final ApiService _apiService;

  CustomerRepository(this._apiService);

  Future<CustomerListResponse> getCustomers({
    int page = 1,
    int perPage = 10,
    String? search,
  }) async {
    try {
      return await _apiService.getCustomers(page, perPage, search);
    } catch (e) {
      return DummyDataService.getDummyCustomerListResponse(
        page: page,
        perPage: perPage,
        search: search,
      );
    }
  }

  Future<CustomerModel> getCustomer(int id) async {
    try {
      return await _apiService.getCustomer(id);
    } catch (e) {
      final customers = DummyDataService.getDummyCustomers();
      final customer = customers.firstWhere(
        (c) => c.id == id,
        orElse: () => customers.first,
      );
      return customer;
    }
  }

  Future<CustomerModel> createCustomer(Map<String, dynamic> data) async {
    try {
      return await _apiService.createCustomer(data);
    } catch (e) {
      throw Exception('Failed to create customer: $e');
    }
  }

  Future<CustomerModel> updateCustomer(int id, Map<String, dynamic> data) async {
    try {
      return await _apiService.updateCustomer(id, data);
    } catch (e) {
      throw Exception('Failed to update customer: $e');
    }
  }

  Future<void> deleteCustomer(int id) async {
    try {
      await _apiService.deleteCustomer(id);
    } catch (e) {
      throw Exception('Failed to delete customer: $e');
    }
  }
}

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<CategoryListResponse> getCategories({
    int? page,
    int? perPage,
  }) async {
    try {
      return await _apiService.getCategories(page, perPage);
    } catch (e) {
      return DummyDataService.getDummyCategoryListResponse();
    }
  }

  Future<CategoryModel> getCategory(int id) async {
    try {
      return await _apiService.getCategory(id);
    } catch (e) {
      final categories = DummyDataService.getDummyCategories();
      final category = categories.firstWhere(
        (c) => c.id == id,
        orElse: () => categories.first,
      );
      return category;
    }
  }

  Future<CategoryModel> createCategory(Map<String, dynamic> data) async {
    try {
      return await _apiService.createCategory(data);
    } catch (e) {
      throw Exception('Failed to create category: $e');
    }
  }

  Future<CategoryModel> updateCategory(int id, Map<String, dynamic> data) async {
    try {
      return await _apiService.updateCategory(id, data);
    } catch (e) {
      throw Exception('Failed to update category: $e');
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      await _apiService.deleteCategory(id);
    } catch (e) {
      throw Exception('Failed to delete category: $e');
    }
  }
}

class MessageRepository {
  final ApiService _apiService;

  MessageRepository(this._apiService);

  Future<MessageListResponse> getMessages({
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      return await _apiService.getMessages(page, perPage);
    } catch (e) {
      return DummyDataService.getDummyMessageListResponse(
        page: page,
        perPage: perPage,
      );
    }
  }

  Future<SendMessageResponse> sendMessage(SendMessageRequest request) async {
    try {
      return await _apiService.sendMessage(request);
    } catch (e) {
      return DummyDataService.getDummySendMessageResponse();
    }
  }

  Future<MessageListResponse> getCustomerMessages(int customerId) async {
    try {
      return await _apiService.getCustomerMessages(customerId);
    } catch (e) {
      final allMessages = DummyDataService.getDummyMessages();
      final customerMessages = allMessages.where((message) {
        final customers = DummyDataService.getDummyCustomers();
        final customer = customers.firstWhere(
          (c) => c.id == customerId,
          orElse: () => customers.first,
        );
        return message.customerNumber == customer.phoneNumber;
      }).toList();
      
      return MessageListResponse(
        data: customerMessages,
        total: customerMessages.length,
        currentPage: 1,
        lastPage: 1,
      );
    }
  }
}
