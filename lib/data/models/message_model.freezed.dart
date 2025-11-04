// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_number')
  String get customerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_content')
  String get messageContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_status')
  String get messageStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_categories')
  String? get customerCategories => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_at')
  DateTime? get sentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'customer_number') String customerNumber,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'message_content') String messageContent,
      @JsonKey(name: 'message_status') String messageStatus,
      @JsonKey(name: 'customer_categories') String? customerCategories,
      @JsonKey(name: 'sent_at') DateTime? sentAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerNumber = null,
    Object? customerName = freezed,
    Object? messageContent = null,
    Object? messageStatus = null,
    Object? customerCategories = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategories: freezed == customerCategories
          ? _value.customerCategories
          : customerCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'customer_number') String customerNumber,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'message_content') String messageContent,
      @JsonKey(name: 'message_status') String messageStatus,
      @JsonKey(name: 'customer_categories') String? customerCategories,
      @JsonKey(name: 'sent_at') DateTime? sentAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerNumber = null,
    Object? customerName = freezed,
    Object? messageContent = null,
    Object? messageStatus = null,
    Object? customerCategories = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as String,
      customerCategories: freezed == customerCategories
          ? _value.customerCategories
          : customerCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      @JsonKey(name: 'customer_number') required this.customerNumber,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'message_content') required this.messageContent,
      @JsonKey(name: 'message_status') required this.messageStatus,
      @JsonKey(name: 'customer_categories') this.customerCategories,
      @JsonKey(name: 'sent_at') this.sentAt,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'customer_number')
  final String customerNumber;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'message_content')
  final String messageContent;
  @override
  @JsonKey(name: 'message_status')
  final String messageStatus;
  @override
  @JsonKey(name: 'customer_categories')
  final String? customerCategories;
  @override
  @JsonKey(name: 'sent_at')
  final DateTime? sentAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MessageModel(id: $id, customerNumber: $customerNumber, customerName: $customerName, messageContent: $messageContent, messageStatus: $messageStatus, customerCategories: $customerCategories, sentAt: $sentAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent) &&
            (identical(other.messageStatus, messageStatus) ||
                other.messageStatus == messageStatus) &&
            (identical(other.customerCategories, customerCategories) ||
                other.customerCategories == customerCategories) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerNumber, customerName,
      messageContent, messageStatus, customerCategories, sentAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final int id,
      @JsonKey(name: 'customer_number') required final String customerNumber,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'message_content') required final String messageContent,
      @JsonKey(name: 'message_status') required final String messageStatus,
      @JsonKey(name: 'customer_categories') final String? customerCategories,
      @JsonKey(name: 'sent_at') final DateTime? sentAt,
      @JsonKey(name: 'created_at')
      final DateTime? createdAt}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'customer_number')
  String get customerNumber;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'message_content')
  String get messageContent;
  @override
  @JsonKey(name: 'message_status')
  String get messageStatus;
  @override
  @JsonKey(name: 'customer_categories')
  String? get customerCategories;
  @override
  @JsonKey(name: 'sent_at')
  DateTime? get sentAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageListResponse _$MessageListResponseFromJson(Map<String, dynamic> json) {
  return _MessageListResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageListResponse {
  List<MessageModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageListResponseCopyWith<MessageListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListResponseCopyWith<$Res> {
  factory $MessageListResponseCopyWith(
          MessageListResponse value, $Res Function(MessageListResponse) then) =
      _$MessageListResponseCopyWithImpl<$Res, MessageListResponse>;
  @useResult
  $Res call(
      {List<MessageModel> data,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$MessageListResponseCopyWithImpl<$Res, $Val extends MessageListResponse>
    implements $MessageListResponseCopyWith<$Res> {
  _$MessageListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageListResponseImplCopyWith<$Res>
    implements $MessageListResponseCopyWith<$Res> {
  factory _$$MessageListResponseImplCopyWith(_$MessageListResponseImpl value,
          $Res Function(_$MessageListResponseImpl) then) =
      __$$MessageListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MessageModel> data,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$MessageListResponseImplCopyWithImpl<$Res>
    extends _$MessageListResponseCopyWithImpl<$Res, _$MessageListResponseImpl>
    implements _$$MessageListResponseImplCopyWith<$Res> {
  __$$MessageListResponseImplCopyWithImpl(_$MessageListResponseImpl _value,
      $Res Function(_$MessageListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$MessageListResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageListResponseImpl implements _MessageListResponse {
  const _$MessageListResponseImpl(
      {required final List<MessageModel> data,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : _data = data;

  factory _$MessageListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageListResponseImplFromJson(json);

  final List<MessageModel> _data;
  @override
  List<MessageModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  @override
  String toString() {
    return 'MessageListResponse(data: $data, total: $total, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), total, currentPage, lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageListResponseImplCopyWith<_$MessageListResponseImpl> get copyWith =>
      __$$MessageListResponseImplCopyWithImpl<_$MessageListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageListResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageListResponse implements MessageListResponse {
  const factory _MessageListResponse(
          {required final List<MessageModel> data,
          @JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'last_page') final int? lastPage}) =
      _$MessageListResponseImpl;

  factory _MessageListResponse.fromJson(Map<String, dynamic> json) =
      _$MessageListResponseImpl.fromJson;

  @override
  List<MessageModel> get data;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$MessageListResponseImplCopyWith<_$MessageListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) {
  return _SendMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$SendMessageRequest {
  @JsonKey(name: 'sender_id')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_ids')
  List<int>? get customerIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_to_all')
  bool? get sendToAll => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_content')
  String get messageContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageRequestCopyWith<SendMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageRequestCopyWith<$Res> {
  factory $SendMessageRequestCopyWith(
          SendMessageRequest value, $Res Function(SendMessageRequest) then) =
      _$SendMessageRequestCopyWithImpl<$Res, SendMessageRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'customer_ids') List<int>? customerIds,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'send_to_all') bool? sendToAll,
      @JsonKey(name: 'message_content') String messageContent});
}

/// @nodoc
class _$SendMessageRequestCopyWithImpl<$Res, $Val extends SendMessageRequest>
    implements $SendMessageRequestCopyWith<$Res> {
  _$SendMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? customerIds = freezed,
    Object? categoryId = freezed,
    Object? sendToAll = freezed,
    Object? messageContent = null,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerIds: freezed == customerIds
          ? _value.customerIds
          : customerIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      sendToAll: freezed == sendToAll
          ? _value.sendToAll
          : sendToAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageRequestImplCopyWith<$Res>
    implements $SendMessageRequestCopyWith<$Res> {
  factory _$$SendMessageRequestImplCopyWith(_$SendMessageRequestImpl value,
          $Res Function(_$SendMessageRequestImpl) then) =
      __$$SendMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'customer_ids') List<int>? customerIds,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'send_to_all') bool? sendToAll,
      @JsonKey(name: 'message_content') String messageContent});
}

/// @nodoc
class __$$SendMessageRequestImplCopyWithImpl<$Res>
    extends _$SendMessageRequestCopyWithImpl<$Res, _$SendMessageRequestImpl>
    implements _$$SendMessageRequestImplCopyWith<$Res> {
  __$$SendMessageRequestImplCopyWithImpl(_$SendMessageRequestImpl _value,
      $Res Function(_$SendMessageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? customerIds = freezed,
    Object? categoryId = freezed,
    Object? sendToAll = freezed,
    Object? messageContent = null,
  }) {
    return _then(_$SendMessageRequestImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerIds: freezed == customerIds
          ? _value._customerIds
          : customerIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      sendToAll: freezed == sendToAll
          ? _value.sendToAll
          : sendToAll // ignore: cast_nullable_to_non_nullable
              as bool?,
      messageContent: null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageRequestImpl implements _SendMessageRequest {
  const _$SendMessageRequestImpl(
      {@JsonKey(name: 'sender_id') required this.senderId,
      @JsonKey(name: 'customer_ids') final List<int>? customerIds,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'send_to_all') this.sendToAll,
      @JsonKey(name: 'message_content') required this.messageContent})
      : _customerIds = customerIds;

  factory _$SendMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageRequestImplFromJson(json);

  @override
  @JsonKey(name: 'sender_id')
  final String senderId;
  final List<int>? _customerIds;
  @override
  @JsonKey(name: 'customer_ids')
  List<int>? get customerIds {
    final value = _customerIds;
    if (value == null) return null;
    if (_customerIds is EqualUnmodifiableListView) return _customerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'send_to_all')
  final bool? sendToAll;
  @override
  @JsonKey(name: 'message_content')
  final String messageContent;

  @override
  String toString() {
    return 'SendMessageRequest(senderId: $senderId, customerIds: $customerIds, categoryId: $categoryId, sendToAll: $sendToAll, messageContent: $messageContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageRequestImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            const DeepCollectionEquality()
                .equals(other._customerIds, _customerIds) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.sendToAll, sendToAll) ||
                other.sendToAll == sendToAll) &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      senderId,
      const DeepCollectionEquality().hash(_customerIds),
      categoryId,
      sendToAll,
      messageContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      __$$SendMessageRequestImplCopyWithImpl<_$SendMessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _SendMessageRequest implements SendMessageRequest {
  const factory _SendMessageRequest(
      {@JsonKey(name: 'sender_id') required final String senderId,
      @JsonKey(name: 'customer_ids') final List<int>? customerIds,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'send_to_all') final bool? sendToAll,
      @JsonKey(name: 'message_content')
      required final String messageContent}) = _$SendMessageRequestImpl;

  factory _SendMessageRequest.fromJson(Map<String, dynamic> json) =
      _$SendMessageRequestImpl.fromJson;

  @override
  @JsonKey(name: 'sender_id')
  String get senderId;
  @override
  @JsonKey(name: 'customer_ids')
  List<int>? get customerIds;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'send_to_all')
  bool? get sendToAll;
  @override
  @JsonKey(name: 'message_content')
  String get messageContent;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageResponse _$SendMessageResponseFromJson(Map<String, dynamic> json) {
  return _SendMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$SendMessageResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageResponseCopyWith<SendMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageResponseCopyWith<$Res> {
  factory $SendMessageResponseCopyWith(
          SendMessageResponse value, $Res Function(SendMessageResponse) then) =
      _$SendMessageResponseCopyWithImpl<$Res, SendMessageResponse>;
  @useResult
  $Res call({bool success, String? message, Map<String, dynamic>? data});
}

/// @nodoc
class _$SendMessageResponseCopyWithImpl<$Res, $Val extends SendMessageResponse>
    implements $SendMessageResponseCopyWith<$Res> {
  _$SendMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageResponseImplCopyWith<$Res>
    implements $SendMessageResponseCopyWith<$Res> {
  factory _$$SendMessageResponseImplCopyWith(_$SendMessageResponseImpl value,
          $Res Function(_$SendMessageResponseImpl) then) =
      __$$SendMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, Map<String, dynamic>? data});
}

/// @nodoc
class __$$SendMessageResponseImplCopyWithImpl<$Res>
    extends _$SendMessageResponseCopyWithImpl<$Res, _$SendMessageResponseImpl>
    implements _$$SendMessageResponseImplCopyWith<$Res> {
  __$$SendMessageResponseImplCopyWithImpl(_$SendMessageResponseImpl _value,
      $Res Function(_$SendMessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SendMessageResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageResponseImpl implements _SendMessageResponse {
  const _$SendMessageResponseImpl(
      {required this.success, this.message, final Map<String, dynamic>? data})
      : _data = data;

  factory _$SendMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SendMessageResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageResponseImplCopyWith<_$SendMessageResponseImpl> get copyWith =>
      __$$SendMessageResponseImplCopyWithImpl<_$SendMessageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _SendMessageResponse implements SendMessageResponse {
  const factory _SendMessageResponse(
      {required final bool success,
      final String? message,
      final Map<String, dynamic>? data}) = _$SendMessageResponseImpl;

  factory _SendMessageResponse.fromJson(Map<String, dynamic> json) =
      _$SendMessageResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SendMessageResponseImplCopyWith<_$SendMessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
