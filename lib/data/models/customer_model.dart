import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    @JsonKey(name: 'phone') required String phoneNumber,
    @JsonKey(name: 'customer_no') String? customerNo,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    String? image,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
class CustomerListResponse with _$CustomerListResponse {
  const factory CustomerListResponse({
    required List<CustomerModel> data,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _CustomerListResponse;

  factory CustomerListResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerListResponseFromJson(json);
}
