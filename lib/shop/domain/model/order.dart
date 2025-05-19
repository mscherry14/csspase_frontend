import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/datetime_converter.dart';
import '../../../common/utils/photo_converter.dart';
import 'order_status_converter.dart';
import 'status_enum.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    @JsonKey(name: "orderId") required String id,
    @JsonKey(name: "title") required String name,
    @JsonKey(name: "photo") @PhotoConverter() @Default(null) ImageProvider? photo,
    @JsonKey(name: "orderStatus") @OrderStatusConverter() required StatusEnum status,
    @JsonKey(name: "created_at") @DateTimeConverter() required DateTime orderDate,
    @JsonKey(name: "price") required int price,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}