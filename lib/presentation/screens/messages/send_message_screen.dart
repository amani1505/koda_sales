import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/message_model.dart';
import '../../providers/message_provider.dart';
import '../../providers/customer_provider.dart';
import '../../providers/category_provider.dart';

class SendMessageScreen extends ConsumerStatefulWidget {
  const SendMessageScreen({super.key});

  @override
  ConsumerState<SendMessageScreen> createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends ConsumerState<SendMessageScreen> {
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _senderIdController = TextEditingController();
  
  bool _sendToAll = false;
  bool _sendByCategory = false;
  int? _selectedCategoryId;
  List<int> _selectedCustomerIds = [];

  @override
  void dispose() {
    _messageController.dispose();
    _senderIdController.dispose();
    super.dispose();
  }

  void _toggleCustomerSelection(int customerId) {
    setState(() {
      if (_selectedCustomerIds.contains(customerId)) {
        _selectedCustomerIds.remove(customerId);
      } else {
        _selectedCustomerIds.add(customerId);
      }
    });
  }

  Future<void> _sendMessage() async {
    if (_messageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a message')),
      );
      return;
    }

    if (_senderIdController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a sender ID')),
      );
      return;
    }

    final request = SendMessageRequest(
      senderId: _senderIdController.text,
      customerIds: _sendToAll ? null : _selectedCustomerIds,
      categoryId: _sendByCategory ? _selectedCategoryId : null,
      sendToAll: _sendToAll,
      messageContent: _messageController.text,
    );

    final success = await ref
        .read(messageNotifierProvider.notifier)
        .sendMessage(request);

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully')),
      );
      context.pop();
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send message')),
      );
    }
  }

  void _showCategorySelector() {
    final categoriesAsync = ref.read(categoryNotifierProvider);
    
    categoriesAsync.whenData((categories) {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Category',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              ...categories.map((category) {
                return ListTile(
                  title: Text(category.categoryName),
                  trailing: _selectedCategoryId == category.id
                      ? const Icon(Icons.check, color: Colors.blue)
                      : null,
                  onTap: () {
                    setState(() {
                      _selectedCategoryId = category.id;
                    });
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final customerState = ref.watch(customerNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Message'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sender ID
            TextField(
              controller: _senderIdController,
              decoration: const InputDecoration(
                labelText: 'Sender ID',
                hintText: 'Enter sender ID',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),

            // Send Options
            Row(
              children: [
                Checkbox(
                  value: _sendToAll,
                  onChanged: (value) {
                    setState(() {
                      _sendToAll = value ?? false;
                      if (_sendToAll) {
                        _sendByCategory = false;
                        _selectedCustomerIds.clear();
                      }
                    });
                  },
                ),
                const Text('Send to All Customers'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _sendByCategory,
                  onChanged: (value) {
                    setState(() {
                      _sendByCategory = value ?? false;
                      if (_sendByCategory) {
                        _sendToAll = false;
                        _showCategorySelector();
                      }
                    });
                  },
                ),
                const Text('Send by Category'),
              ],
            ),

            if (!_sendToAll && !_sendByCategory) ...[
              const SizedBox(height: 16),
              Text(
                'Select Customers',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              
              // Customer List
              Container(
                constraints: const BoxConstraints(maxHeight: 300),
                child: Card(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: customerState.customers.length,
                    itemBuilder: (context, index) {
                      final customer = customerState.customers[index];
                      final isSelected = _selectedCustomerIds.contains(customer.id);
                      
                      return CheckboxListTile(
                        value: isSelected,
                        onChanged: (value) {
                          _toggleCustomerSelection(customer.id);
                        },
                        title: Text(customer.firstName),
                        subtitle: Text(customer.phoneNumber),
                      );
                    },
                  ),
                ),
              ),
            ],

            const SizedBox(height: 16),

            // Message Input
            Text(
              'Message',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type your message here...',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
              maxLength: 160,
            ),
            const SizedBox(height: 24),

            // Send Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _sendMessage,
                icon: const Icon(Icons.send),
                label: const Text('Send Message'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
