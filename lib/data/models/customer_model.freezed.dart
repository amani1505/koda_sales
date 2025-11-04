// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_no')
  String? get customerNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'phone') String phoneNumber,
      @JsonKey(name: 'customer_no') String? customerNo,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? image});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = null,
    Object? customerNo = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerNo: freezed == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
          _$CustomerModelImpl value, $Res Function(_$CustomerModelImpl) then) =
      __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'phone') String phoneNumber,
      @JsonKey(name: 'customer_no') String? customerNo,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? image});
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
      _$CustomerModelImpl _value, $Res Function(_$CustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = null,
    Object? customerNo = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CustomerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerNo: freezed == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl implements _CustomerModel {
  const _$CustomerModelImpl(
      {required this.id,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'middle_name') this.middleName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      @JsonKey(name: 'phone') required this.phoneNumber,
      @JsonKey(name: 'customer_no') this.customerNo,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.image});

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String phoneNumber;
  @override
  @JsonKey(name: 'customer_no')
  final String? customerNo;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? image;

  @override
  String toString() {
    return 'CustomerModel(id: $id, firstName: $firstName, middleName: $middleName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, customerNo: $customerNo, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.customerNo, customerNo) ||
                other.customerNo == customerNo) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      middleName,
      lastName,
      email,
      phoneNumber,
      customerNo,
      createdBy,
      createdAt,
      updatedAt,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerModel implements CustomerModel {
  const factory _CustomerModel(
      {required final int id,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'middle_name') final String? middleName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? email,
      @JsonKey(name: 'phone') required final String phoneNumber,
      @JsonKey(name: 'customer_no') final String? customerNo,
      @JsonKey(name: 'created_by') final String? createdBy,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? image}) = _$CustomerModelImpl;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String? get middleName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String get phoneNumber;
  @override
  @JsonKey(name: 'customer_no')
  String? get customerNo;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerListResponse _$CustomerListResponseFromJson(Map<String, dynamic> json) {
  return _CustomerListResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerListResponse {
  List<CustomerModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerListResponseCopyWith<CustomerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListResponseCopyWith<$Res> {
  factory $CustomerListResponseCopyWith(CustomerListResponse value,
          $Res Function(CustomerListResponse) then) =
      _$CustomerListResponseCopyWithImpl<$Res, CustomerListResponse>;
  @useResult
  $Res call(
      {List<CustomerModel> data,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$CustomerListResponseCopyWithImpl<$Res,
        $Val extends CustomerListResponse>
    implements $CustomerListResponseCopyWith<$Res> {
  _$CustomerListResponseCopyWithImpl(this._value, this._then);

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
              as List<CustomerModel>,
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
abstract class _$$CustomerListResponseImplCopyWith<$Res>
    implements $CustomerListResponseCopyWith<$Res> {
  factory _$$CustomerListResponseImplCopyWith(_$CustomerListResponseImpl value,
          $Res Function(_$CustomerListResponseImpl) then) =
      __$$CustomerListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerModel> data,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$CustomerListResponseImplCopyWithImpl<$Res>
    extends _$CustomerListResponseCopyWithImpl<$Res, _$CustomerListResponseImpl>
    implements _$$CustomerListResponseImplCopyWith<$Res> {
  __$$CustomerListResponseImplCopyWithImpl(_$CustomerListResponseImpl _value,
      $Res Function(_$CustomerListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$CustomerListResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
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
class _$CustomerListResponseImpl implements _CustomerListResponse {
  const _$CustomerListResponseImpl(
      {required final List<CustomerModel> data,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage})
      : _data = data;

  factory _$CustomerListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListResponseImplFromJson(json);

  final List<CustomerModel> _data;
  @override
  List<CustomerModel> get data {
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
    return 'CustomerListResponse(data: $data, total: $total, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListResponseImpl &&
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
  _$$CustomerListResponseImplCopyWith<_$CustomerListResponseImpl>
      get copyWith =>
          __$$CustomerListResponseImplCopyWithImpl<_$CustomerListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListResponseImplToJson(
      this,
    );
  }
}

abstract class _CustomerListResponse implements CustomerListResponse {
  const factory _CustomerListResponse(
          {required final List<CustomerModel> data,
          @JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'last_page') final int? lastPage}) =
      _$CustomerListResponseImpl;

  factory _CustomerListResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerListResponseImpl.fromJson;

  @override
  List<CustomerModel> get data;
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
  _$$CustomerListResponseImplCopyWith<_$CustomerListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
