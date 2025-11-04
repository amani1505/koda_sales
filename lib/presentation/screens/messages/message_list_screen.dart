import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../providers/message_provider.dart';

class MessageListScreen extends ConsumerStatefulWidget {
  const MessageListScreen({super.key});

  @override
  ConsumerState<MessageListScreen> createState() => _MessageListScreenState();
}

class _MessageListScreenState extends ConsumerState<MessageListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      ref.read(messageNotifierProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final messageState = ref.watch(messageNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.push('/messages/send');
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(messageNotifierProvider.notifier).refresh();
        },
        child: messageState.messages.isEmpty && !messageState.isLoading
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message_outlined,
                      size: 64,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No messages found',
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
                padding: const EdgeInsets.all(16),
                itemCount: messageState.messages.length + 1,
                itemBuilder: (context, index) {
                  if (index == messageState.messages.length) {
                    return messageState.isLoading
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : const SizedBox.shrink();
                  }

                  final message = messageState.messages[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: _getStatusColor(message.messageStatus)
                            .withOpacity(0.2),
                        child: Icon(
                          Icons.message,
                          color: _getStatusColor(message.messageStatus),
                        ),
                      ),
                      title: Text(
                        message.customerNumber,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text(
                            message.messageContent,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            message.sentAt != null
                                ? DateFormat('MMM dd, yyyy hh:mm a')
                                    .format(message.sentAt!)
                                : 'Not sent yet',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(message.messageStatus)
                              .withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          message.messageStatus,
                          style: TextStyle(
                            color: _getStatusColor(message.messageStatus),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.push('/messages/send');
        },
        icon: const Icon(Icons.send),
        label: const Text('Send Message'),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'delivery':
      case 'delivered':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'failed':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
