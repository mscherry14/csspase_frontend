import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class PhotoConverter extends JsonConverter<ImageProvider?, String?> {
  const PhotoConverter();

  @override
  ImageProvider<Object>? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    if (json.isEmpty) {
      return null;
    }
    final ImageProvider photo = NetworkImage(json);
    return photo;
  }

  @override
  String? toJson(ImageProvider<Object>? object) {
    if (object is NetworkImage) {
      return object.url;
    }
    return "";
  }
}