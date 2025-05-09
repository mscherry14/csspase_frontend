// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccrualValidationFormState {

 int get sumToSend; int get capacity;
/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccrualValidationFormStateCopyWith<AccrualValidationFormState> get copyWith => _$AccrualValidationFormStateCopyWithImpl<AccrualValidationFormState>(this as AccrualValidationFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualValidationFormState&&(identical(other.sumToSend, sumToSend) || other.sumToSend == sumToSend)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}


@override
int get hashCode => Object.hash(runtimeType,sumToSend,capacity);

@override
String toString() {
  return 'AccrualValidationFormState(sumToSend: $sumToSend, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class $AccrualValidationFormStateCopyWith<$Res>  {
  factory $AccrualValidationFormStateCopyWith(AccrualValidationFormState value, $Res Function(AccrualValidationFormState) _then) = _$AccrualValidationFormStateCopyWithImpl;
@useResult
$Res call({
 int sumToSend, int capacity
});




}
/// @nodoc
class _$AccrualValidationFormStateCopyWithImpl<$Res>
    implements $AccrualValidationFormStateCopyWith<$Res> {
  _$AccrualValidationFormStateCopyWithImpl(this._self, this._then);

  final AccrualValidationFormState _self;
  final $Res Function(AccrualValidationFormState) _then;

/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sumToSend = null,Object? capacity = null,}) {
  return _then(_self.copyWith(
sumToSend: null == sumToSend ? _self.sumToSend : sumToSend // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class AccrualValidFormState implements AccrualValidationFormState {
  const AccrualValidFormState({required this.sumToSend, required this.capacity});
  

@override final  int sumToSend;
@override final  int capacity;

/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidFormStateCopyWith<AccrualValidFormState> get copyWith => _$ValidFormStateCopyWithImpl<AccrualValidFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualValidFormState&&(identical(other.sumToSend, sumToSend) || other.sumToSend == sumToSend)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}


@override
int get hashCode => Object.hash(runtimeType,sumToSend,capacity);

@override
String toString() {
  return 'AccrualValidationFormState.valid(sumToSend: $sumToSend, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class $ValidFormStateCopyWith<$Res> implements $AccrualValidationFormStateCopyWith<$Res> {
  factory $ValidFormStateCopyWith(AccrualValidFormState value, $Res Function(AccrualValidFormState) _then) = _$ValidFormStateCopyWithImpl;
@override @useResult
$Res call({
 int sumToSend, int capacity
});




}
/// @nodoc
class _$ValidFormStateCopyWithImpl<$Res>
    implements $ValidFormStateCopyWith<$Res> {
  _$ValidFormStateCopyWithImpl(this._self, this._then);

  final AccrualValidFormState _self;
  final $Res Function(AccrualValidFormState) _then;

/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sumToSend = null,Object? capacity = null,}) {
  return _then(AccrualValidFormState(
sumToSend: null == sumToSend ? _self.sumToSend : sumToSend // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AccrualNotValidFormState implements AccrualValidationFormState {
  const AccrualNotValidFormState({required this.sumToSend, required this.capacity, required this.errorMessage});
  

@override final  int sumToSend;
@override final  int capacity;
 final  String errorMessage;

/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotValidFormStateCopyWith<AccrualNotValidFormState> get copyWith => _$NotValidFormStateCopyWithImpl<AccrualNotValidFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualNotValidFormState&&(identical(other.sumToSend, sumToSend) || other.sumToSend == sumToSend)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,sumToSend,capacity,errorMessage);

@override
String toString() {
  return 'AccrualValidationFormState.notValid(sumToSend: $sumToSend, capacity: $capacity, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NotValidFormStateCopyWith<$Res> implements $AccrualValidationFormStateCopyWith<$Res> {
  factory $NotValidFormStateCopyWith(AccrualNotValidFormState value, $Res Function(AccrualNotValidFormState) _then) = _$NotValidFormStateCopyWithImpl;
@override @useResult
$Res call({
 int sumToSend, int capacity, String errorMessage
});




}
/// @nodoc
class _$NotValidFormStateCopyWithImpl<$Res>
    implements $NotValidFormStateCopyWith<$Res> {
  _$NotValidFormStateCopyWithImpl(this._self, this._then);

  final AccrualNotValidFormState _self;
  final $Res Function(AccrualNotValidFormState) _then;

/// Create a copy of AccrualValidationFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sumToSend = null,Object? capacity = null,Object? errorMessage = null,}) {
  return _then(AccrualNotValidFormState(
sumToSend: null == sumToSend ? _self.sumToSend : sumToSend // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
