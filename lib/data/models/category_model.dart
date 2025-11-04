import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    @JsonKey(name: 'id_number') required int idNumber,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'category_description') String? categoryDescription,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryListResponse with _$CategoryListResponse {
  const factory CategoryListResponse({
    required List<CategoryModel> data,
    @JsonKey(name: 'total') int? total,
  }) = _CategoryListResponse;

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseFromJson(json);
}
