// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

@JsonKey(name: "orderId") String get id;@JsonKey(name: "title") String get name;@JsonKey(name: "photo")@PhotoConverter() ImageProvider? get photo;@JsonKey(name: "orderStatus")@OrderStatusConverter() StatusEnum get status;@JsonKey(name: "created_at")@DateTimeConverter() DateTime get orderDate;@JsonKey(name: "price") int get price;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,status,orderDate,price);

@override
String toString() {
  return 'Order(id: $id, name: $name, photo: $photo, status: $status, orderDate: $orderDate, price: $price)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "orderId") String id,@JsonKey(name: "title") String name,@JsonKey(name: "photo")@PhotoConverter() ImageProvider? photo,@JsonKey(name: "orderStatus")@OrderStatusConverter() StatusEnum status,@JsonKey(name: "created_at")@DateTimeConverter() DateTime orderDate,@JsonKey(name: "price") int price
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? status = null,Object? orderDate = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ImageProvider?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEnum,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({@JsonKey(name: "orderId") required this.id, @JsonKey(name: "title") required this.name, @JsonKey(name: "photo")@PhotoConverter() this.photo = null, @JsonKey(name: "orderStatus")@OrderStatusConverter() required this.status, @JsonKey(name: "created_at")@DateTimeConverter() required this.orderDate, @JsonKey(name: "price") required this.price});
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: "orderId") final  String id;
@override@JsonKey(name: "title") final  String name;
@override@JsonKey(name: "photo")@PhotoConverter() final  ImageProvider? photo;
@override@JsonKey(name: "orderStatus")@OrderStatusConverter() final  StatusEnum status;
@override@JsonKey(name: "created_at")@DateTimeConverter() final  DateTime orderDate;
@override@JsonKey(name: "price") final  int price;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,status,orderDate,price);

@override
String toString() {
  return 'Order(id: $id, name: $name, photo: $photo, status: $status, orderDate: $orderDate, price: $price)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "orderId") String id,@JsonKey(name: "title") String name,@JsonKey(name: "photo")@PhotoConverter() ImageProvider? photo,@JsonKey(name: "orderStatus")@OrderStatusConverter() StatusEnum status,@JsonKey(name: "created_at")@DateTimeConverter() DateTime orderDate,@JsonKey(name: "price") int price
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? status = null,Object? orderDate = null,Object? price = null,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ImageProvider?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusEnum,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
