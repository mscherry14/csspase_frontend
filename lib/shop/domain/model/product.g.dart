// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  productId: json['productId'] as String,
  productName: json['title'] as String,
  price: (json['price'] as num).toInt(),
  photo:
      json['photo'] == null
          ? null
          : const PhotoConverter().fromJson(json['photo'] as String?),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'productId': instance.productId,
  'title': instance.productName,
  'price': instance.price,
  'photo': const PhotoConverter().toJson(instance.photo),
};
