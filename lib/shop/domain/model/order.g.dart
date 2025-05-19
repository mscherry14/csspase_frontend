// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: json['orderId'] as String,
  name: json['title'] as String,
  photo:
      json['photo'] == null
          ? null
          : const PhotoConverter().fromJson(json['photo'] as String?),
  status: const OrderStatusConverter().fromJson(json['orderStatus'] as String),
  orderDate: const DateTimeConverter().fromJson(json['created_at'] as String),
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'orderId': instance.id,
  'title': instance.name,
  'photo': const PhotoConverter().toJson(instance.photo),
  'orderStatus': const OrderStatusConverter().toJson(instance.status),
  'created_at': const DateTimeConverter().toJson(instance.orderDate),
  'price': instance.price,
};
