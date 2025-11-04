import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/customer_provider.dart';
import '../../../data/models/customer_model.dart';

class CustomerListScreen extends ConsumerStatefulWidget {
  const CustomerListScreen({super.key});

  @override
  ConsumerState<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends ConsumerState<CustomerListScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      ref.read(customerNotifierProvider.notifier).loadMore(
            search: _searchController.text.isEmpty ? null : _searchController.text,
          );
    }
  }

  void _showAddCustomerSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: const AddCustomerBottomSheet(),
      ),
    );
  }

  void _showCustomerOptions(int customerId) {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomerOptionsBottomSheet(customerId: customerId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerState = ref.watch(customerNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download_outlined),
            onPressed: () {
              // Download template
            },
          ),
          IconButton(
            icon: const Icon(Icons.file_upload_outlined),
            onPressed: () {
              // Import Excel
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search customers...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          ref.read(customerNotifierProvider.notifier).refresh();
                        },
                      )
                    : null,
              ),
              onSubmitted: (value) {
                ref.read(customerNotifierProvider.notifier).loadCustomers(
                      search: value.isEmpty ? null : value,
                    );
              },
            ),
          ),

          // Customer List
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await ref.read(customerNotifierProvider.notifier).refresh();
              },
              child: customerState.customers.isEmpty && !customerState.isLoading
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people_outline,
                            size: 64,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No customers found',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: customerState.customers.length + 1,
                      itemBuilder: (context, index) {
                        if (index == customerState.customers.length) {
                          return customerState.isLoading
                              ? const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: CircularProgressIndicator(),
                                  ),
                                )
                              : const SizedBox.shrink();
                        }

                        final customer = customerState.customers[index];
                        return _CustomerCard(
                          customer: customer,
                          onTap: () => context.push('/customers/${customer.id}'),
                          onOptions: () => _showCustomerOptions(customer.id),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddCustomerSheet,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AddCustomerBottomSheet extends StatelessWidget {
  const AddCustomerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final phoneController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add New Customer',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: firstNameController,
            decoration: const InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter first name',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: phoneController,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter phone number',
            ),
            keyboardType: TextInputType.phone,
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
                    // Add customer logic
                    Navigator.pop(context);
                  },
                  child: const Text('Add Customer'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomerOptionsBottomSheet extends StatelessWidget {
  final int customerId;

  const CustomerOptionsBottomSheet({
    super.key,
    required this.customerId,
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
              // Edit customer
            },
          ),
          ListTile(
            leading: const Icon(Icons.visibility, color: Colors.blue),
            title: const Text('View Details'),
            onTap: () {
              Navigator.pop(context);
              context.push('/customers/$customerId');
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.red),
            title: const Text('Delete'),
            onTap: () {
              Navigator.pop(context);
              // Show delete confirmation
            },
          ),
        ],
      ),
    );
  }
}

class _CustomerCard extends StatelessWidget {
  final CustomerModel customer;
  final VoidCallback onTap;
  final VoidCallback onOptions;

  const _CustomerCard({
    required this.customer,
    required this.onTap,
    required this.onOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green.shade50,
                Colors.green.shade100,
              ],
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade300,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    customer.firstName[0].toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${customer.firstName} ${customer.lastName ?? ''}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (customer.customerNo != null)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              customer.customerNo!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            customer.phoneNumber,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (customer.email != null) ...[
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 14,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              customer.email!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 12,
                          color: Colors.grey.shade500,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          customer.createdAt != null 
                              ? 'Joined: ${_formatDate(customer.createdAt!)}'
                              : 'No date',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: onOptions,
                  iconSize: 20,
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
