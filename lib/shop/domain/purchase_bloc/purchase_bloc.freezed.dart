// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchaseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseEvent()';
}


}

/// @nodoc
class $PurchaseEventCopyWith<$Res>  {
$PurchaseEventCopyWith(PurchaseEvent _, $Res Function(PurchaseEvent) __);
}


/// @nodoc


class InitEvent implements PurchaseEvent {
  const InitEvent({required this.productId});
  

 final  String productId;

/// Create a copy of PurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitEventCopyWith<InitEvent> get copyWith => _$InitEventCopyWithImpl<InitEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEvent&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'PurchaseEvent.init(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $InitEventCopyWith<$Res> implements $PurchaseEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) _then) = _$InitEventCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$InitEventCopyWithImpl<$Res>
    implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._self, this._then);

  final InitEvent _self;
  final $Res Function(InitEvent) _then;

/// Create a copy of PurchaseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(InitEvent(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ConfirmPurchaseEvent implements PurchaseEvent {
  const ConfirmPurchaseEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmPurchaseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseEvent.confirm()';
}


}




/// @nodoc
mixin _$PurchaseState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseState()';
}


}

/// @nodoc
class $PurchaseStateCopyWith<$Res>  {
$PurchaseStateCopyWith(PurchaseState _, $Res Function(PurchaseState) __);
}


/// @nodoc


class InitialState implements PurchaseState {
  const InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseState.initial()';
}


}




/// @nodoc


class ProductErrorState implements PurchaseState {
  const ProductErrorState({this.message});
  

 final  String? message;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductErrorStateCopyWith<ProductErrorState> get copyWith => _$ProductErrorStateCopyWithImpl<ProductErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseState.productError(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductErrorStateCopyWith<$Res> implements $PurchaseStateCopyWith<$Res> {
  factory $ProductErrorStateCopyWith(ProductErrorState value, $Res Function(ProductErrorState) _then) = _$ProductErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$ProductErrorStateCopyWithImpl<$Res>
    implements $ProductErrorStateCopyWith<$Res> {
  _$ProductErrorStateCopyWithImpl(this._self, this._then);

  final ProductErrorState _self;
  final $Res Function(ProductErrorState) _then;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(ProductErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WaitForConfirmationState implements PurchaseState {
  const WaitForConfirmationState({required this.product});
  

 final  Product product;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaitForConfirmationStateCopyWith<WaitForConfirmationState> get copyWith => _$WaitForConfirmationStateCopyWithImpl<WaitForConfirmationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitForConfirmationState&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'PurchaseState.waitForConfirmation(product: $product)';
}


}

/// @nodoc
abstract mixin class $WaitForConfirmationStateCopyWith<$Res> implements $PurchaseStateCopyWith<$Res> {
  factory $WaitForConfirmationStateCopyWith(WaitForConfirmationState value, $Res Function(WaitForConfirmationState) _then) = _$WaitForConfirmationStateCopyWithImpl;
@useResult
$Res call({
 Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$WaitForConfirmationStateCopyWithImpl<$Res>
    implements $WaitForConfirmationStateCopyWith<$Res> {
  _$WaitForConfirmationStateCopyWithImpl(this._self, this._then);

  final WaitForConfirmationState _self;
  final $Res Function(WaitForConfirmationState) _then;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(WaitForConfirmationState(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class PurchaseSuccessState implements PurchaseState {
  const PurchaseSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseState.success()';
}


}




/// @nodoc


class PurchaseErrorState implements PurchaseState {
  const PurchaseErrorState({this.message});
  

 final  String? message;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseErrorStateCopyWith<PurchaseErrorState> get copyWith => _$PurchaseErrorStateCopyWithImpl<PurchaseErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PurchaseErrorStateCopyWith<$Res> implements $PurchaseStateCopyWith<$Res> {
  factory $PurchaseErrorStateCopyWith(PurchaseErrorState value, $Res Function(PurchaseErrorState) _then) = _$PurchaseErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$PurchaseErrorStateCopyWithImpl<$Res>
    implements $PurchaseErrorStateCopyWith<$Res> {
  _$PurchaseErrorStateCopyWithImpl(this._self, this._then);

  final PurchaseErrorState _self;
  final $Res Function(PurchaseErrorState) _then;

/// Create a copy of PurchaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(PurchaseErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
