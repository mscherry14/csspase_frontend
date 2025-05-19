import 'package:csspace_app/common/utils/photo_converter.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: "productId") required String productId,
    @JsonKey(name: "title") required String productName,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "photo") @PhotoConverter() @Default(null) ImageProvider? photo,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}