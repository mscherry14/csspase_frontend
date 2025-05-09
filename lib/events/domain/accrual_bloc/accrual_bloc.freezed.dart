// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accrual_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccrualEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccrualEvent()';
}


}

/// @nodoc
class $AccrualEventCopyWith<$Res>  {
$AccrualEventCopyWith(AccrualEvent _, $Res Function(AccrualEvent) __);
}


/// @nodoc


class InitEvent implements AccrualEvent {
  const InitEvent({required this.eventId, required this.recipientId});
  

 final  String eventId;
 final  String recipientId;

/// Create a copy of AccrualEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitEventCopyWith<InitEvent> get copyWith => _$InitEventCopyWithImpl<InitEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitEvent&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,recipientId);

@override
String toString() {
  return 'AccrualEvent.init(eventId: $eventId, recipientId: $recipientId)';
}


}

/// @nodoc
abstract mixin class $InitEventCopyWith<$Res> implements $AccrualEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) _then) = _$InitEventCopyWithImpl;
@useResult
$Res call({
 String eventId, String recipientId
});




}
/// @nodoc
class _$InitEventCopyWithImpl<$Res>
    implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._self, this._then);

  final InitEvent _self;
  final $Res Function(InitEvent) _then;

/// Create a copy of AccrualEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? recipientId = null,}) {
  return _then(InitEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,recipientId: null == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SendAccrualEvent implements AccrualEvent {
  const SendAccrualEvent({required this.sum});
  

 final  int sum;

/// Create a copy of AccrualEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendAccrualEventCopyWith<SendAccrualEvent> get copyWith => _$SendAccrualEventCopyWithImpl<SendAccrualEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendAccrualEvent&&(identical(other.sum, sum) || other.sum == sum));
}


@override
int get hashCode => Object.hash(runtimeType,sum);

@override
String toString() {
  return 'AccrualEvent.send(sum: $sum)';
}


}

/// @nodoc
abstract mixin class $SendAccrualEventCopyWith<$Res> implements $AccrualEventCopyWith<$Res> {
  factory $SendAccrualEventCopyWith(SendAccrualEvent value, $Res Function(SendAccrualEvent) _then) = _$SendAccrualEventCopyWithImpl;
@useResult
$Res call({
 int sum
});




}
/// @nodoc
class _$SendAccrualEventCopyWithImpl<$Res>
    implements $SendAccrualEventCopyWith<$Res> {
  _$SendAccrualEventCopyWithImpl(this._self, this._then);

  final SendAccrualEvent _self;
  final $Res Function(SendAccrualEvent) _then;

/// Create a copy of AccrualEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sum = null,}) {
  return _then(SendAccrualEvent(
sum: null == sum ? _self.sum : sum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AccrualState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccrualState()';
}


}

/// @nodoc
class $AccrualStateCopyWith<$Res>  {
$AccrualStateCopyWith(AccrualState _, $Res Function(AccrualState) __);
}


/// @nodoc


class InitialAccrualState implements AccrualState {
  const InitialAccrualState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialAccrualState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccrualState.initial()';
}


}




/// @nodoc


class InitAccrualErrorState implements AccrualState {
  const InitAccrualErrorState({this.message});
  

 final  String? message;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitAccrualErrorStateCopyWith<InitAccrualErrorState> get copyWith => _$InitAccrualErrorStateCopyWithImpl<InitAccrualErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitAccrualErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AccrualState.initialError(message: $message)';
}


}

/// @nodoc
abstract mixin class $InitAccrualErrorStateCopyWith<$Res> implements $AccrualStateCopyWith<$Res> {
  factory $InitAccrualErrorStateCopyWith(InitAccrualErrorState value, $Res Function(InitAccrualErrorState) _then) = _$InitAccrualErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$InitAccrualErrorStateCopyWithImpl<$Res>
    implements $InitAccrualErrorStateCopyWith<$Res> {
  _$InitAccrualErrorStateCopyWithImpl(this._self, this._then);

  final InitAccrualErrorState _self;
  final $Res Function(InitAccrualErrorState) _then;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(InitAccrualErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WaitForSendingState implements AccrualState {
  const WaitForSendingState({required this.eventId, required this.recipient, required this.tokensCapacity});
  

 final  String eventId;
 final  ParticipantModel recipient;
 final  int tokensCapacity;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaitForSendingStateCopyWith<WaitForSendingState> get copyWith => _$WaitForSendingStateCopyWithImpl<WaitForSendingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaitForSendingState&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.tokensCapacity, tokensCapacity) || other.tokensCapacity == tokensCapacity));
}


@override
int get hashCode => Object.hash(runtimeType,eventId,recipient,tokensCapacity);

@override
String toString() {
  return 'AccrualState.waitForSending(eventId: $eventId, recipient: $recipient, tokensCapacity: $tokensCapacity)';
}


}

/// @nodoc
abstract mixin class $WaitForSendingStateCopyWith<$Res> implements $AccrualStateCopyWith<$Res> {
  factory $WaitForSendingStateCopyWith(WaitForSendingState value, $Res Function(WaitForSendingState) _then) = _$WaitForSendingStateCopyWithImpl;
@useResult
$Res call({
 String eventId, ParticipantModel recipient, int tokensCapacity
});


$ParticipantModelCopyWith<$Res> get recipient;

}
/// @nodoc
class _$WaitForSendingStateCopyWithImpl<$Res>
    implements $WaitForSendingStateCopyWith<$Res> {
  _$WaitForSendingStateCopyWithImpl(this._self, this._then);

  final WaitForSendingState _self;
  final $Res Function(WaitForSendingState) _then;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? recipient = null,Object? tokensCapacity = null,}) {
  return _then(WaitForSendingState(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as ParticipantModel,tokensCapacity: null == tokensCapacity ? _self.tokensCapacity : tokensCapacity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipantModelCopyWith<$Res> get recipient {
  
  return $ParticipantModelCopyWith<$Res>(_self.recipient, (value) {
    return _then(_self.copyWith(recipient: value));
  });
}
}

/// @nodoc


class AccrualSuccessState implements AccrualState {
  const AccrualSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccrualState.success()';
}


}




/// @nodoc


class AccrualErrorState implements AccrualState {
  const AccrualErrorState({this.message});
  

 final  String? message;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccrualErrorStateCopyWith<AccrualErrorState> get copyWith => _$AccrualErrorStateCopyWithImpl<AccrualErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AccrualState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AccrualErrorStateCopyWith<$Res> implements $AccrualStateCopyWith<$Res> {
  factory $AccrualErrorStateCopyWith(AccrualErrorState value, $Res Function(AccrualErrorState) _then) = _$AccrualErrorStateCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$AccrualErrorStateCopyWithImpl<$Res>
    implements $AccrualErrorStateCopyWith<$Res> {
  _$AccrualErrorStateCopyWithImpl(this._self, this._then);

  final AccrualErrorState _self;
  final $Res Function(AccrualErrorState) _then;

/// Create a copy of AccrualState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(AccrualErrorState(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
