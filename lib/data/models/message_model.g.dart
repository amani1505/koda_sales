// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num).toInt(),
      customerNumber: json['customer_number'] as String,
      customerName: json['customer_name'] as String?,
      messageContent: json['message_content'] as String,
      messageStatus: json['message_status'] as String,
      customerCategories: json['customer_categories'] as String?,
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_number': instance.customerNumber,
      'customer_name': instance.customerName,
      'message_content': instance.messageContent,
      'message_status': instance.messageStatus,
      'customer_categories': instance.customerCategories,
      'sent_at': instance.sentAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$MessageListResponseImpl _$$MessageListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MessageListResponseImplToJson(
        _$MessageListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };

_$SendMessageRequestImpl _$$SendMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageRequestImpl(
      senderId: json['sender_id'] as String,
      customerIds: (json['customer_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      sendToAll: json['send_to_all'] as bool?,
      messageContent: json['message_content'] as String,
    );

Map<String, dynamic> _$$SendMessageRequestImplToJson(
        _$SendMessageRequestImpl instance) =>
    <String, dynamic>{
      'sender_id': instance.senderId,
      'customer_ids': instance.customerIds,
      'category_id': instance.categoryId,
      'send_to_all': instance.sendToAll,
      'message_content': instance.messageContent,
    };

_$SendMessageResponseImpl _$$SendMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SendMessageResponseImplToJson(
        _$SendMessageResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };
