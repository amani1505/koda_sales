import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/customer_model.dart';
import '../../../data/repositories/repository_impl.dart';

class CustomerListState {
  final List<CustomerModel> customers;
  final bool isLoading;
  final String? error;
  final int currentPage;
  final int? totalPages;
  final bool hasMore;

  CustomerListState({
    this.customers = const [],
    this.isLoading = false,
    this.error,
    this.currentPage = 1,
    this.totalPages,
    this.hasMore = true,
  });

  CustomerListState copyWith({
    List<CustomerModel>? customers,
    bool? isLoading,
    String? error,
    int? currentPage,
    int? totalPages,
    bool? hasMore,
  }) {
    return CustomerListState(
      customers: customers ?? this.customers,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class CustomerNotifier extends StateNotifier<CustomerListState> {
  final CustomerRepository _repository;

  CustomerNotifier(this._repository) : super(CustomerListState()) {
    loadCustomers();
  }

  Future<void> loadCustomers({String? search}) async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getCustomers(
        page: 1,
        perPage: 10,
        search: search,
      );

      state = state.copyWith(
        customers: response.data,
        isLoading: false,
        currentPage: response.currentPage ?? 1,
        totalPages: response.lastPage,
        hasMore: (response.currentPage ?? 1) < (response.lastPage ?? 1),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> loadMore({String? search}) async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true);

    try {
      final nextPage = state.currentPage + 1;
      final response = await _repository.getCustomers(
        page: nextPage,
        perPage: 10,
        search: search,
      );

      state = state.copyWith(
        customers: [...state.customers, ...response.data],
        isLoading: false,
        currentPage: response.currentPage ?? nextPage,
        hasMore: (response.currentPage ?? nextPage) < (response.lastPage ?? nextPage),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> deleteCustomer(int id) async {
    try {
      await _repository.deleteCustomer(id);
      state = state.copyWith(
        customers: state.customers.where((c) => c.id != id).toList(),
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  Future<void> refresh() async {
    state = CustomerListState();
    await loadCustomers();
  }
}

final customerNotifierProvider =
    StateNotifierProvider<CustomerNotifier, CustomerListState>((ref) {
  return CustomerNotifier(ref.watch(customerRepositoryProvider));
});

final customerDetailProvider =
    FutureProvider.family<CustomerModel, int>((ref, id) async {
  final repository = ref.watch(customerRepositoryProvider);
  return await repository.getCustomer(id);
});
