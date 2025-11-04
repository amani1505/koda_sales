import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/message_model.dart';
import '../../../data/repositories/repository_impl.dart';

class MessageListState {
  final List<MessageModel> messages;
  final bool isLoading;
  final String? error;
  final int currentPage;
  final int? totalPages;
  final bool hasMore;

  MessageListState({
    this.messages = const [],
    this.isLoading = false,
    this.error,
    this.currentPage = 1,
    this.totalPages,
    this.hasMore = true,
  });

  MessageListState copyWith({
    List<MessageModel>? messages,
    bool? isLoading,
    String? error,
    int? currentPage,
    int? totalPages,
    bool? hasMore,
  }) {
    return MessageListState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class MessageNotifier extends StateNotifier<MessageListState> {
  final MessageRepository _repository;

  MessageNotifier(this._repository) : super(MessageListState()) {
    loadMessages();
  }

  Future<void> loadMessages() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _repository.getMessages(page: 1, perPage: 10);

      state = state.copyWith(
        messages: response.data,
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

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true);

    try {
      final nextPage = state.currentPage + 1;
      final response = await _repository.getMessages(
        page: nextPage,
        perPage: 10,
      );

      state = state.copyWith(
        messages: [...state.messages, ...response.data],
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

  Future<bool> sendMessage(SendMessageRequest request) async {
    try {
      await _repository.sendMessage(request);
      await refresh();
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<void> refresh() async {
    state = MessageListState();
    await loadMessages();
  }
}

final messageNotifierProvider =
    StateNotifierProvider<MessageNotifier, MessageListState>((ref) {
  return MessageNotifier(ref.watch(messageRepositoryProvider));
});

final customerMessagesProvider =
    FutureProvider.family<List<MessageModel>, int>((ref, customerId) async {
  final repository = ref.watch(messageRepositoryProvider);
  final response = await repository.getCustomerMessages(customerId);
  return response.data;
});
