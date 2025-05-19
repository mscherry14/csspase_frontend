import 'package:csspace_app/common/utils/photo_converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lector_model.freezed.dart';
part 'lector_model.g.dart';

@freezed
abstract class LectorModel with _$LectorModel {
  @JsonSerializable(explicitToJson: true,)
  const factory LectorModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "photo")
    @PhotoConverter()
    ImageProvider? photo,
    @JsonKey(name: "role") required String role,
  }) = _LectorModel;

  factory LectorModel.fromJson(Map<String, dynamic> json) => _$LectorModelFromJson(json);
}
