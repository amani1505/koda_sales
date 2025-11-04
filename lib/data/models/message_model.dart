import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required int id,
    @JsonKey(name: 'customer_number') required String customerNumber,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'message_content') required String messageContent,
    @JsonKey(name: 'message_status') required String messageStatus,
    @JsonKey(name: 'customer_categories') String? customerCategories,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

@freezed
class MessageListResponse with _$MessageListResponse {
  const factory MessageListResponse({
    required List<MessageModel> data,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _MessageListResponse;

  factory MessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageListResponseFromJson(json);
}

@freezed
class SendMessageRequest with _$SendMessageRequest {
  const factory SendMessageRequest({
    @JsonKey(name: 'sender_id') required String senderId,
    @JsonKey(name: 'customer_ids') List<int>? customerIds,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'send_to_all') bool? sendToAll,
    @JsonKey(name: 'message_content') required String messageContent,
  }) = _SendMessageRequest;

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);
}

@freezed
class SendMessageResponse with _$SendMessageResponse {
  const factory SendMessageResponse({
    required bool success,
    String? message,
    Map<String, dynamic>? data,
  }) = _SendMessageResponse;

  factory SendMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SendMessageResponseFromJson(json);
}
