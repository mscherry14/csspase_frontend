import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_enum.dart';

part 'order.freezed.dart';
//todo: maybe order must include product.....
@freezed
abstract class Order with _$Order {
  const factory Order({
    required String id,
    required String name,
    required StatusEnum status,
    required DateTime orderDate,
    required int price,
  }) = _Order;
}