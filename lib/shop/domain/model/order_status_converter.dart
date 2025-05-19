import 'package:csspace_app/shop/domain/model/status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OrderStatusConverter extends JsonConverter<StatusEnum, String> {
  const OrderStatusConverter();

  @override
  StatusEnum fromJson(String json) {
    switch (json) {
      case "created":
        return StatusEnum.waiting;
      case "paid":
        return StatusEnum.waiting;
      case "confirmed":
        return StatusEnum.waiting;
      case "canceled":
        return StatusEnum.rejected;
      case "completed":
        return StatusEnum.completed;
      default:
        return StatusEnum.rejected;
    }
  }

  @override
  String toJson(StatusEnum object) {
    switch (object) {
      case StatusEnum.waiting:
        return "paid";
      case StatusEnum.rejected:
        return "canceled";
      case StatusEnum.completed:
        return "completed";
    }
  }
}