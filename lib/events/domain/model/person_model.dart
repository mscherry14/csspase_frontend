import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';

@freezed
class PersonModel with _$PersonModel {
  @override
  final String id;
  @override
  final ImageProvider? avatar;
  @override
  final String name;

  const PersonModel({required this.id, this.avatar, required this.name, });
  //TODO: implement person
}