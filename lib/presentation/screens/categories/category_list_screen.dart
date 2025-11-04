import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/category_provider.dart';
import '../../../data/models/category_model.dart';

class CategoryListScreen extends ConsumerWidget {
  const CategoryListScreen({super.key});

  void _showAddCategorySheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: const AddCategoryBottomSheet(),
      ),
    );
  }

  void _showCategoryOptions(BuildContext context, WidgetRef ref, int categoryId) {
    showModalBottomSheet(
      context: context,
      builder: (context) => CategoryOptionsBottomSheet(
        categoryId: categoryId,
        ref: ref,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoryNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(categoryNotifierProvider.notifier).refresh();
        },
        child: categoriesAsync.when(
          data: (categories) {
            if (categories.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.category_outlined,
                      size: 64,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No categories found',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              );
            }

            return GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _CategoryCard(
                  category: category,
                  onEdit: () {
                    // Edit category
                  },
                  onView: () {
                    // View category
                  },
                  onDelete: () {
                    _showDeleteConfirmation(context, ref, category.id);
                  },
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Error: $error'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ref.read(categoryNotifierProvider.notifier).refresh();
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddCategorySheet(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmation(
      BuildContext context, WidgetRef ref, int categoryId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Category'),
        content: const Text('Are you sure you want to delete this category?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await ref
                  .read(categoryNotifierProvider.notifier)
                  .deleteCategory(categoryId);
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class AddCategoryBottomSheet extends StatelessWidget {
  const AddCategoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add New Category',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Category Name',
              hintText: 'Enter category name',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(
              labelText: 'Description',
              hintText: 'Enter description (optional)',
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Add category logic
                    Navigator.pop(context);
                  },
                  child: const Text('Add Category'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryOptionsBottomSheet extends StatelessWidget {
  final int categoryId;
  final WidgetRef ref;

  const CategoryOptionsBottomSheet({
    super.key,
    required this.categoryId,
    required this.ref,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.edit, color: Colors.green),
            title: const Text('Edit'),
            onTap: () {
              Navigator.pop(context);
              // Edit category
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.red),
            title: const Text('Delete'),
            onTap: () async {
              Navigator.pop(context);
              await ref
                  .read(categoryNotifierProvider.notifier)
                  .deleteCategory(categoryId);
            },
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final CategoryModel category;
  final VoidCallback onEdit;
  final VoidCallback onView;
  final VoidCallback onDelete;

  const _CategoryCard({
    required this.category,
    required this.onEdit,
    required this.onView,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'ID: ${category.idNumber}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(Icons.more_vert, color: Colors.grey.shade600),
                    onSelected: (value) {
                      switch (value) {
                        case 'edit':
                          onEdit();
                          break;
                        case 'view':
                          onView();
                          break;
                        case 'delete':
                          onDelete();
                          break;
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'edit',
                        child: Row(
                          children: [
                            Icon(Icons.edit, color: Colors.green, size: 20),
                            SizedBox(width: 8),
                            Text('Edit'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'view',
                        child: Row(
                          children: [
                            Icon(Icons.visibility, color: Colors.blue, size: 20),
                            SizedBox(width: 8),
                            Text('View'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'delete',
                        child: Row(
                          children: [
                            Icon(Icons.delete, color: Colors.red, size: 20),
                            SizedBox(width: 8),
                            Text('Delete'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.category,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                category.categoryName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              Text(
                category.categoryDescription ?? 'No description',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 8),
              Text(
                category.createdAt != null 
                    ? 'Created: ${_formatDate(category.createdAt!)}'
                    : 'No date',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
