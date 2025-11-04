// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone'] as String,
      customerNo: json['customer_no'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phoneNumber,
      'customer_no': instance.customerNo,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'image': instance.image,
    };

_$CustomerListResponseImpl _$$CustomerListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CustomerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CustomerListResponseImplToJson(
        _$CustomerListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
