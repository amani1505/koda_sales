import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/category_model.dart';
import '../../../data/repositories/repository_impl.dart';

final categoriesProvider = FutureProvider<List<CategoryModel>>((ref) async {
  final repository = ref.watch(categoryRepositoryProvider);
  final response = await repository.getCategories();
  return response.data;
});

class CategoryNotifier extends StateNotifier<AsyncValue<List<CategoryModel>>> {
  final CategoryRepository _repository;

  CategoryNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadCategories();
  }

  Future<void> loadCategories() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _repository.getCategories();
      return response.data;
    });
  }

  Future<void> deleteCategory(int id) async {
    try {
      await _repository.deleteCategory(id);
      await loadCategories();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> refresh() async {
    await loadCategories();
  }
}

final categoryNotifierProvider =
    StateNotifierProvider<CategoryNotifier, AsyncValue<List<CategoryModel>>>((ref) {
  return CategoryNotifier(ref.watch(categoryRepositoryProvider));
});
