// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      idNumber: (json['id_number'] as num).toInt(),
      categoryName: json['category_name'] as String,
      categoryDescription: json['category_description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_number': instance.idNumber,
      'category_name': instance.categoryName,
      'category_description': instance.categoryDescription,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CategoryListResponseImpl _$$CategoryListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryListResponseImplToJson(
        _$CategoryListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };
