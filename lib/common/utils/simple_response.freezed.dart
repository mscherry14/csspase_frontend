// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SimpleResponse<T> {

 T? get payload;
/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleResponseCopyWith<T, SimpleResponse<T>> get copyWith => _$SimpleResponseCopyWithImpl<T, SimpleResponse<T>>(this as SimpleResponse<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleResponse<T>&&const DeepCollectionEquality().equals(other.payload, payload));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'SimpleResponse<$T>(payload: $payload)';
}


}

/// @nodoc
abstract mixin class $SimpleResponseCopyWith<T,$Res>  {
  factory $SimpleResponseCopyWith(SimpleResponse<T> value, $Res Function(SimpleResponse<T>) _then) = _$SimpleResponseCopyWithImpl;
@useResult
$Res call({
 T? payload
});




}
/// @nodoc
class _$SimpleResponseCopyWithImpl<T,$Res>
    implements $SimpleResponseCopyWith<T, $Res> {
  _$SimpleResponseCopyWithImpl(this._self, this._then);

  final SimpleResponse<T> _self;
  final $Res Function(SimpleResponse<T>) _then;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payload = freezed,}) {
  return _then(_self.copyWith(
payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as T?,
  ) as SimpleResponse<T>);
}

}


/// @nodoc


class SimpleOkResponse<T> implements SimpleResponse<T> {
  const SimpleOkResponse({required this.payload});
  

@override final  T? payload;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleOkResponseCopyWith<T, SimpleOkResponse<T>> get copyWith => _$SimpleOkResponseCopyWithImpl<T, SimpleOkResponse<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleOkResponse<T>&&const DeepCollectionEquality().equals(other.payload, payload));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'SimpleResponse<$T>.ok(payload: $payload)';
}


}

/// @nodoc
abstract mixin class $SimpleOkResponseCopyWith<T,$Res> implements $SimpleResponseCopyWith<T, $Res> {
  factory $SimpleOkResponseCopyWith(SimpleOkResponse<T> value, $Res Function(SimpleOkResponse<T>) _then) = _$SimpleOkResponseCopyWithImpl;
@override @useResult
$Res call({
 T? payload
});




}
/// @nodoc
class _$SimpleOkResponseCopyWithImpl<T,$Res>
    implements $SimpleOkResponseCopyWith<T, $Res> {
  _$SimpleOkResponseCopyWithImpl(this._self, this._then);

  final SimpleOkResponse<T> _self;
  final $Res Function(SimpleOkResponse<T>) _then;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payload = freezed,}) {
  return _then(SimpleOkResponse<T>(
payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc


class SimpleErrorResponse<T> implements SimpleResponse<T> {
  const SimpleErrorResponse({required this.message, required this.payload});
  

 final  String message;
@override final  T? payload;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleErrorResponseCopyWith<T, SimpleErrorResponse<T>> get copyWith => _$SimpleErrorResponseCopyWithImpl<T, SimpleErrorResponse<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleErrorResponse<T>&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.payload, payload));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'SimpleResponse<$T>.error(message: $message, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $SimpleErrorResponseCopyWith<T,$Res> implements $SimpleResponseCopyWith<T, $Res> {
  factory $SimpleErrorResponseCopyWith(SimpleErrorResponse<T> value, $Res Function(SimpleErrorResponse<T>) _then) = _$SimpleErrorResponseCopyWithImpl;
@override @useResult
$Res call({
 String message, T? payload
});




}
/// @nodoc
class _$SimpleErrorResponseCopyWithImpl<T,$Res>
    implements $SimpleErrorResponseCopyWith<T, $Res> {
  _$SimpleErrorResponseCopyWithImpl(this._self, this._then);

  final SimpleErrorResponse<T> _self;
  final $Res Function(SimpleErrorResponse<T>) _then;

/// Create a copy of SimpleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? payload = freezed,}) {
  return _then(SimpleErrorResponse<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
