// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_number')
  int get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_description')
  String? get categoryDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'id_number') int idNumber,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_description') String? categoryDescription,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idNumber = null,
    Object? categoryName = null,
    Object? categoryDescription = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'id_number') int idNumber,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_description') String? categoryDescription,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idNumber = null,
    Object? categoryName = null,
    Object? categoryDescription = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {required this.id,
      @JsonKey(name: 'id_number') required this.idNumber,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'category_description') this.categoryDescription,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'id_number')
  final int idNumber;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'category_description')
  final String? categoryDescription;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategoryModel(id: $id, idNumber: $idNumber, categoryName: $categoryName, categoryDescription: $categoryDescription, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryDescription, categoryDescription) ||
                other.categoryDescription == categoryDescription) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idNumber, categoryName,
      categoryDescription, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {required final int id,
      @JsonKey(name: 'id_number') required final int idNumber,
      @JsonKey(name: 'category_name') required final String categoryName,
      @JsonKey(name: 'category_description') final String? categoryDescription,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'id_number')
  int get idNumber;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'category_description')
  String? get categoryDescription;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  return _CategoryListResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponse {
  List<CategoryModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListResponseCopyWith<CategoryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseCopyWith<$Res> {
  factory $CategoryListResponseCopyWith(CategoryListResponse value,
          $Res Function(CategoryListResponse) then) =
      _$CategoryListResponseCopyWithImpl<$Res, CategoryListResponse>;
  @useResult
  $Res call({List<CategoryModel> data, @JsonKey(name: 'total') int? total});
}

/// @nodoc
class _$CategoryListResponseCopyWithImpl<$Res,
        $Val extends CategoryListResponse>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryListResponseImplCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseImplCopyWith(_$CategoryListResponseImpl value,
          $Res Function(_$CategoryListResponseImpl) then) =
      __$$CategoryListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> data, @JsonKey(name: 'total') int? total});
}

/// @nodoc
class __$$CategoryListResponseImplCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res, _$CategoryListResponseImpl>
    implements _$$CategoryListResponseImplCopyWith<$Res> {
  __$$CategoryListResponseImplCopyWithImpl(_$CategoryListResponseImpl _value,
      $Res Function(_$CategoryListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? total = freezed,
  }) {
    return _then(_$CategoryListResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseImpl implements _CategoryListResponse {
  const _$CategoryListResponseImpl(
      {required final List<CategoryModel> data,
      @JsonKey(name: 'total') this.total})
      : _data = data;

  factory _$CategoryListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseImplFromJson(json);

  final List<CategoryModel> _data;
  @override
  List<CategoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'total')
  final int? total;

  @override
  String toString() {
    return 'CategoryListResponse(data: $data, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith =>
          __$$CategoryListResponseImplCopyWithImpl<_$CategoryListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryListResponse implements CategoryListResponse {
  const factory _CategoryListResponse(
      {required final List<CategoryModel> data,
      @JsonKey(name: 'total') final int? total}) = _$CategoryListResponseImpl;

  factory _CategoryListResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseImpl.fromJson;

  @override
  List<CategoryModel> get data;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
