// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_route_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnknownRoutePath {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownRoutePath);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnknownRoutePath()';
}


}

/// @nodoc
class $UnknownRoutePathCopyWith<$Res>  {
$UnknownRoutePathCopyWith(UnknownRoutePath _, $Res Function(UnknownRoutePath) __);
}


/// @nodoc
mixin _$ConcreteEventRoutePath {

 String get eventId;
/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConcreteEventRoutePathCopyWith<ConcreteEventRoutePath> get copyWith => _$ConcreteEventRoutePathCopyWithImpl<ConcreteEventRoutePath>(this as ConcreteEventRoutePath, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConcreteEventRoutePath&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'ConcreteEventRoutePath(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $ConcreteEventRoutePathCopyWith<$Res>  {
  factory $ConcreteEventRoutePathCopyWith(ConcreteEventRoutePath value, $Res Function(ConcreteEventRoutePath) _then) = _$ConcreteEventRoutePathCopyWithImpl;
@useResult
$Res call({
 String eventId
});




}
/// @nodoc
class _$ConcreteEventRoutePathCopyWithImpl<$Res>
    implements $ConcreteEventRoutePathCopyWith<$Res> {
  _$ConcreteEventRoutePathCopyWithImpl(this._self, this._then);

  final ConcreteEventRoutePath _self;
  final $Res Function(ConcreteEventRoutePath) _then;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class EventInfoRoutePath extends ConcreteEventRoutePath {
  const EventInfoRoutePath({required this.eventId}): super._();
  

@override final  String eventId;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventInfoRoutePathCopyWith<EventInfoRoutePath> get copyWith => _$EventInfoRoutePathCopyWithImpl<EventInfoRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventInfoRoutePath&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'ConcreteEventRoutePath.eventInfo(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $EventInfoRoutePathCopyWith<$Res> implements $ConcreteEventRoutePathCopyWith<$Res> {
  factory $EventInfoRoutePathCopyWith(EventInfoRoutePath value, $Res Function(EventInfoRoutePath) _then) = _$EventInfoRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String eventId
});




}
/// @nodoc
class _$EventInfoRoutePathCopyWithImpl<$Res>
    implements $EventInfoRoutePathCopyWith<$Res> {
  _$EventInfoRoutePathCopyWithImpl(this._self, this._then);

  final EventInfoRoutePath _self;
  final $Res Function(EventInfoRoutePath) _then;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,}) {
  return _then(EventInfoRoutePath(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EventTokenAccrualRoutePath extends ConcreteEventRoutePath {
  const EventTokenAccrualRoutePath({required this.eventId, required this.personId}): super._();
  

@override final  String eventId;
 final  String personId;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTokenAccrualRoutePathCopyWith<EventTokenAccrualRoutePath> get copyWith => _$EventTokenAccrualRoutePathCopyWithImpl<EventTokenAccrualRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTokenAccrualRoutePath&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.personId, personId) || other.personId == personId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,personId);

@override
String toString() {
  return 'ConcreteEventRoutePath.sendToken(eventId: $eventId, personId: $personId)';
}


}

/// @nodoc
abstract mixin class $EventTokenAccrualRoutePathCopyWith<$Res> implements $ConcreteEventRoutePathCopyWith<$Res> {
  factory $EventTokenAccrualRoutePathCopyWith(EventTokenAccrualRoutePath value, $Res Function(EventTokenAccrualRoutePath) _then) = _$EventTokenAccrualRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String eventId, String personId
});




}
/// @nodoc
class _$EventTokenAccrualRoutePathCopyWithImpl<$Res>
    implements $EventTokenAccrualRoutePathCopyWith<$Res> {
  _$EventTokenAccrualRoutePathCopyWithImpl(this._self, this._then);

  final EventTokenAccrualRoutePath _self;
  final $Res Function(EventTokenAccrualRoutePath) _then;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? personId = null,}) {
  return _then(EventTokenAccrualRoutePath(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,personId: null == personId ? _self.personId : personId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EventTokenSendingResultRoutePath extends ConcreteEventRoutePath {
  const EventTokenSendingResultRoutePath({required this.eventId, required this.success}): super._();
  

@override final  String eventId;
 final  SimpleResponse<bool> success;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTokenSendingResultRoutePathCopyWith<EventTokenSendingResultRoutePath> get copyWith => _$EventTokenSendingResultRoutePathCopyWithImpl<EventTokenSendingResultRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTokenSendingResultRoutePath&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,success);

@override
String toString() {
  return 'ConcreteEventRoutePath.sendingResult(eventId: $eventId, success: $success)';
}


}

/// @nodoc
abstract mixin class $EventTokenSendingResultRoutePathCopyWith<$Res> implements $ConcreteEventRoutePathCopyWith<$Res> {
  factory $EventTokenSendingResultRoutePathCopyWith(EventTokenSendingResultRoutePath value, $Res Function(EventTokenSendingResultRoutePath) _then) = _$EventTokenSendingResultRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String eventId, SimpleResponse<bool> success
});


$SimpleResponseCopyWith<bool, $Res> get success;

}
/// @nodoc
class _$EventTokenSendingResultRoutePathCopyWithImpl<$Res>
    implements $EventTokenSendingResultRoutePathCopyWith<$Res> {
  _$EventTokenSendingResultRoutePathCopyWithImpl(this._self, this._then);

  final EventTokenSendingResultRoutePath _self;
  final $Res Function(EventTokenSendingResultRoutePath) _then;

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? success = null,}) {
  return _then(EventTokenSendingResultRoutePath(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as SimpleResponse<bool>,
  ));
}

/// Create a copy of ConcreteEventRoutePath
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleResponseCopyWith<bool, $Res> get success {
  
  return $SimpleResponseCopyWith<bool, $Res>(_self.success, (value) {
    return _then(_self.copyWith(success: value));
  });
}
}

/// @nodoc
mixin _$ConcreteProductRoutePath {

 String get productId;
/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConcreteProductRoutePathCopyWith<ConcreteProductRoutePath> get copyWith => _$ConcreteProductRoutePathCopyWithImpl<ConcreteProductRoutePath>(this as ConcreteProductRoutePath, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConcreteProductRoutePath&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ConcreteProductRoutePath(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $ConcreteProductRoutePathCopyWith<$Res>  {
  factory $ConcreteProductRoutePathCopyWith(ConcreteProductRoutePath value, $Res Function(ConcreteProductRoutePath) _then) = _$ConcreteProductRoutePathCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$ConcreteProductRoutePathCopyWithImpl<$Res>
    implements $ConcreteProductRoutePathCopyWith<$Res> {
  _$ConcreteProductRoutePathCopyWithImpl(this._self, this._then);

  final ConcreteProductRoutePath _self;
  final $Res Function(ConcreteProductRoutePath) _then;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class ProductInfoRoutePath extends ConcreteProductRoutePath {
  const ProductInfoRoutePath({required this.productId}): super._();
  

@override final  String productId;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductInfoRoutePathCopyWith<ProductInfoRoutePath> get copyWith => _$ProductInfoRoutePathCopyWithImpl<ProductInfoRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductInfoRoutePath&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ConcreteProductRoutePath.productInfo(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $ProductInfoRoutePathCopyWith<$Res> implements $ConcreteProductRoutePathCopyWith<$Res> {
  factory $ProductInfoRoutePathCopyWith(ProductInfoRoutePath value, $Res Function(ProductInfoRoutePath) _then) = _$ProductInfoRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$ProductInfoRoutePathCopyWithImpl<$Res>
    implements $ProductInfoRoutePathCopyWith<$Res> {
  _$ProductInfoRoutePathCopyWithImpl(this._self, this._then);

  final ProductInfoRoutePath _self;
  final $Res Function(ProductInfoRoutePath) _then;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(ProductInfoRoutePath(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PurchaseConfirmationRoutePath extends ConcreteProductRoutePath {
  const PurchaseConfirmationRoutePath({required this.productId}): super._();
  

@override final  String productId;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseConfirmationRoutePathCopyWith<PurchaseConfirmationRoutePath> get copyWith => _$PurchaseConfirmationRoutePathCopyWithImpl<PurchaseConfirmationRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseConfirmationRoutePath&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ConcreteProductRoutePath.purchaseConfirmation(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $PurchaseConfirmationRoutePathCopyWith<$Res> implements $ConcreteProductRoutePathCopyWith<$Res> {
  factory $PurchaseConfirmationRoutePathCopyWith(PurchaseConfirmationRoutePath value, $Res Function(PurchaseConfirmationRoutePath) _then) = _$PurchaseConfirmationRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$PurchaseConfirmationRoutePathCopyWithImpl<$Res>
    implements $PurchaseConfirmationRoutePathCopyWith<$Res> {
  _$PurchaseConfirmationRoutePathCopyWithImpl(this._self, this._then);

  final PurchaseConfirmationRoutePath _self;
  final $Res Function(PurchaseConfirmationRoutePath) _then;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(PurchaseConfirmationRoutePath(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PurchaseSuccessRoutePath extends ConcreteProductRoutePath {
  const PurchaseSuccessRoutePath({required this.productId}): super._();
  

@override final  String productId;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseSuccessRoutePathCopyWith<PurchaseSuccessRoutePath> get copyWith => _$PurchaseSuccessRoutePathCopyWithImpl<PurchaseSuccessRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseSuccessRoutePath&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ConcreteProductRoutePath.purchaseSuccess(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $PurchaseSuccessRoutePathCopyWith<$Res> implements $ConcreteProductRoutePathCopyWith<$Res> {
  factory $PurchaseSuccessRoutePathCopyWith(PurchaseSuccessRoutePath value, $Res Function(PurchaseSuccessRoutePath) _then) = _$PurchaseSuccessRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$PurchaseSuccessRoutePathCopyWithImpl<$Res>
    implements $PurchaseSuccessRoutePathCopyWith<$Res> {
  _$PurchaseSuccessRoutePathCopyWithImpl(this._self, this._then);

  final PurchaseSuccessRoutePath _self;
  final $Res Function(PurchaseSuccessRoutePath) _then;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(PurchaseSuccessRoutePath(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PurchaseErrorRoutePath extends ConcreteProductRoutePath {
  const PurchaseErrorRoutePath({required this.productId, this.errorMessage}): super._();
  

@override final  String productId;
 final  String? errorMessage;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseErrorRoutePathCopyWith<PurchaseErrorRoutePath> get copyWith => _$PurchaseErrorRoutePathCopyWithImpl<PurchaseErrorRoutePath>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseErrorRoutePath&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,productId,errorMessage);

@override
String toString() {
  return 'ConcreteProductRoutePath.purchaseError(productId: $productId, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PurchaseErrorRoutePathCopyWith<$Res> implements $ConcreteProductRoutePathCopyWith<$Res> {
  factory $PurchaseErrorRoutePathCopyWith(PurchaseErrorRoutePath value, $Res Function(PurchaseErrorRoutePath) _then) = _$PurchaseErrorRoutePathCopyWithImpl;
@override @useResult
$Res call({
 String productId, String? errorMessage
});




}
/// @nodoc
class _$PurchaseErrorRoutePathCopyWithImpl<$Res>
    implements $PurchaseErrorRoutePathCopyWith<$Res> {
  _$PurchaseErrorRoutePathCopyWithImpl(this._self, this._then);

  final PurchaseErrorRoutePath _self;
  final $Res Function(PurchaseErrorRoutePath) _then;

/// Create a copy of ConcreteProductRoutePath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? errorMessage = freezed,}) {
  return _then(PurchaseErrorRoutePath(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$OrdersRoutePath {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersRoutePath);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersRoutePath()';
}


}

/// @nodoc
class $OrdersRoutePathCopyWith<$Res>  {
$OrdersRoutePathCopyWith(OrdersRoutePath _, $Res Function(OrdersRoutePath) __);
}


/// @nodoc
mixin _$WalletRoutePath {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletRoutePath);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletRoutePath()';
}


}

/// @nodoc
class $WalletRoutePathCopyWith<$Res>  {
$WalletRoutePathCopyWith(WalletRoutePath _, $Res Function(WalletRoutePath) __);
}


// dart format on
