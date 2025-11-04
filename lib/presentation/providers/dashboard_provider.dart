import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/dashboard_model.dart';
import '../../../data/repositories/repository_impl.dart';

final dashboardProvider = FutureProvider<DashboardModel>((ref) async {
  final repository = ref.watch(dashboardRepositoryProvider);
  return await repository.getDashboard();
});

class DashboardNotifier extends StateNotifier<AsyncValue<DashboardModel>> {
  final DashboardRepository _repository;

  DashboardNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadDashboard();
  }

  Future<void> loadDashboard() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _repository.getDashboard());
  }

  Future<void> refresh() async {
    await loadDashboard();
  }
}

final dashboardNotifierProvider =
    StateNotifierProvider<DashboardNotifier, AsyncValue<DashboardModel>>((ref) {
  return DashboardNotifier(ref.watch(dashboardRepositoryProvider));
});
