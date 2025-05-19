// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lector_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LectorModel _$LectorModelFromJson(Map<String, dynamic> json) => _LectorModel(
  id: json['id'] as String,
  name: json['name'] as String,
  photo: const PhotoConverter().fromJson(json['photo'] as String?),
  role: json['role'] as String,
);

Map<String, dynamic> _$LectorModelToJson(_LectorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': const PhotoConverter().toJson(instance.photo),
      'role': instance.role,
    };
