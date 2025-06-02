// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SingleEventEvent {

 String? get eventId;
/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleEventEventCopyWith<SingleEventEvent> get copyWith => _$SingleEventEventCopyWithImpl<SingleEventEvent>(this as SingleEventEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleEventEvent&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'SingleEventEvent(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $SingleEventEventCopyWith<$Res>  {
  factory $SingleEventEventCopyWith(SingleEventEvent value, $Res Function(SingleEventEvent) _then) = _$SingleEventEventCopyWithImpl;
@useResult
$Res call({
 String eventId
});




}
/// @nodoc
class _$SingleEventEventCopyWithImpl<$Res>
    implements $SingleEventEventCopyWith<$Res> {
  _$SingleEventEventCopyWithImpl(this._self, this._then);

  final SingleEventEvent _self;
  final $Res Function(SingleEventEvent) _then;

/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,}) {
  return _then(_self.copyWith(
eventId: null == eventId ? _self.eventId! : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _InitSingleEventEvent implements SingleEventEvent {
  const _InitSingleEventEvent({required this.eventId});
  

@override final  String eventId;

/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitSingleEventEventCopyWith<_InitSingleEventEvent> get copyWith => __$InitSingleEventEventCopyWithImpl<_InitSingleEventEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitSingleEventEvent&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'SingleEventEvent.init(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class _$InitSingleEventEventCopyWith<$Res> implements $SingleEventEventCopyWith<$Res> {
  factory _$InitSingleEventEventCopyWith(_InitSingleEventEvent value, $Res Function(_InitSingleEventEvent) _then) = __$InitSingleEventEventCopyWithImpl;
@override @useResult
$Res call({
 String eventId
});




}
/// @nodoc
class __$InitSingleEventEventCopyWithImpl<$Res>
    implements _$InitSingleEventEventCopyWith<$Res> {
  __$InitSingleEventEventCopyWithImpl(this._self, this._then);

  final _InitSingleEventEvent _self;
  final $Res Function(_InitSingleEventEvent) _then;

/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,}) {
  return _then(_InitSingleEventEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReloadSingleEventEvent implements SingleEventEvent {
  const _ReloadSingleEventEvent({this.eventId});
  

@override final  String? eventId;

/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReloadSingleEventEventCopyWith<_ReloadSingleEventEvent> get copyWith => __$ReloadSingleEventEventCopyWithImpl<_ReloadSingleEventEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReloadSingleEventEvent&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'SingleEventEvent.reload(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class _$ReloadSingleEventEventCopyWith<$Res> implements $SingleEventEventCopyWith<$Res> {
  factory _$ReloadSingleEventEventCopyWith(_ReloadSingleEventEvent value, $Res Function(_ReloadSingleEventEvent) _then) = __$ReloadSingleEventEventCopyWithImpl;
@override @useResult
$Res call({
 String? eventId
});




}
/// @nodoc
class __$ReloadSingleEventEventCopyWithImpl<$Res>
    implements _$ReloadSingleEventEventCopyWith<$Res> {
  __$ReloadSingleEventEventCopyWithImpl(this._self, this._then);

  final _ReloadSingleEventEvent _self;
  final $Res Function(_ReloadSingleEventEvent) _then;

/// Create a copy of SingleEventEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = freezed,}) {
  return _then(_ReloadSingleEventEvent(
eventId: freezed == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SingleEventState {

 EventModel? get openedEvent;
/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleEventStateCopyWith<SingleEventState> get copyWith => _$SingleEventStateCopyWithImpl<SingleEventState>(this as SingleEventState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleEventState&&(identical(other.openedEvent, openedEvent) || other.openedEvent == openedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,openedEvent);

@override
String toString() {
  return 'SingleEventState(openedEvent: $openedEvent)';
}


}

/// @nodoc
abstract mixin class $SingleEventStateCopyWith<$Res>  {
  factory $SingleEventStateCopyWith(SingleEventState value, $Res Function(SingleEventState) _then) = _$SingleEventStateCopyWithImpl;
@useResult
$Res call({
 EventModel openedEvent
});


$EventModelCopyWith<$Res>? get openedEvent;

}
/// @nodoc
class _$SingleEventStateCopyWithImpl<$Res>
    implements $SingleEventStateCopyWith<$Res> {
  _$SingleEventStateCopyWithImpl(this._self, this._then);

  final SingleEventState _self;
  final $Res Function(SingleEventState) _then;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openedEvent = null,}) {
  return _then(_self.copyWith(
openedEvent: null == openedEvent ? _self.openedEvent! : openedEvent // ignore: cast_nullable_to_non_nullable
as EventModel,
  ));
}
/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get openedEvent {
    if (_self.openedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.openedEvent!, (value) {
    return _then(_self.copyWith(openedEvent: value));
  });
}
}


/// @nodoc


class SingleEventOkState implements SingleEventState {
  const SingleEventOkState({required this.openedEvent});
  

@override final  EventModel openedEvent;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleEventOkStateCopyWith<SingleEventOkState> get copyWith => _$SingleEventOkStateCopyWithImpl<SingleEventOkState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleEventOkState&&(identical(other.openedEvent, openedEvent) || other.openedEvent == openedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,openedEvent);

@override
String toString() {
  return 'SingleEventState(openedEvent: $openedEvent)';
}


}

/// @nodoc
abstract mixin class $SingleEventOkStateCopyWith<$Res> implements $SingleEventStateCopyWith<$Res> {
  factory $SingleEventOkStateCopyWith(SingleEventOkState value, $Res Function(SingleEventOkState) _then) = _$SingleEventOkStateCopyWithImpl;
@override @useResult
$Res call({
 EventModel openedEvent
});


@override $EventModelCopyWith<$Res> get openedEvent;

}
/// @nodoc
class _$SingleEventOkStateCopyWithImpl<$Res>
    implements $SingleEventOkStateCopyWith<$Res> {
  _$SingleEventOkStateCopyWithImpl(this._self, this._then);

  final SingleEventOkState _self;
  final $Res Function(SingleEventOkState) _then;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openedEvent = null,}) {
  return _then(SingleEventOkState(
openedEvent: null == openedEvent ? _self.openedEvent : openedEvent // ignore: cast_nullable_to_non_nullable
as EventModel,
  ));
}

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res> get openedEvent {
  
  return $EventModelCopyWith<$Res>(_self.openedEvent, (value) {
    return _then(_self.copyWith(openedEvent: value));
  });
}
}

/// @nodoc


class SingleEventLoadingState implements SingleEventState {
  const SingleEventLoadingState({this.openedEvent});
  

@override final  EventModel? openedEvent;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleEventLoadingStateCopyWith<SingleEventLoadingState> get copyWith => _$SingleEventLoadingStateCopyWithImpl<SingleEventLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleEventLoadingState&&(identical(other.openedEvent, openedEvent) || other.openedEvent == openedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,openedEvent);

@override
String toString() {
  return 'SingleEventState.loading(openedEvent: $openedEvent)';
}


}

/// @nodoc
abstract mixin class $SingleEventLoadingStateCopyWith<$Res> implements $SingleEventStateCopyWith<$Res> {
  factory $SingleEventLoadingStateCopyWith(SingleEventLoadingState value, $Res Function(SingleEventLoadingState) _then) = _$SingleEventLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 EventModel? openedEvent
});


@override $EventModelCopyWith<$Res>? get openedEvent;

}
/// @nodoc
class _$SingleEventLoadingStateCopyWithImpl<$Res>
    implements $SingleEventLoadingStateCopyWith<$Res> {
  _$SingleEventLoadingStateCopyWithImpl(this._self, this._then);

  final SingleEventLoadingState _self;
  final $Res Function(SingleEventLoadingState) _then;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openedEvent = freezed,}) {
  return _then(SingleEventLoadingState(
openedEvent: freezed == openedEvent ? _self.openedEvent : openedEvent // ignore: cast_nullable_to_non_nullable
as EventModel?,
  ));
}

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get openedEvent {
    if (_self.openedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.openedEvent!, (value) {
    return _then(_self.copyWith(openedEvent: value));
  });
}
}

/// @nodoc


class SingleEventErrorState implements SingleEventState {
  const SingleEventErrorState({this.openedEvent, required this.errorMessage});
  

@override final  EventModel? openedEvent;
 final  String errorMessage;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleEventErrorStateCopyWith<SingleEventErrorState> get copyWith => _$SingleEventErrorStateCopyWithImpl<SingleEventErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleEventErrorState&&(identical(other.openedEvent, openedEvent) || other.openedEvent == openedEvent)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,openedEvent,errorMessage);

@override
String toString() {
  return 'SingleEventState.error(openedEvent: $openedEvent, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SingleEventErrorStateCopyWith<$Res> implements $SingleEventStateCopyWith<$Res> {
  factory $SingleEventErrorStateCopyWith(SingleEventErrorState value, $Res Function(SingleEventErrorState) _then) = _$SingleEventErrorStateCopyWithImpl;
@override @useResult
$Res call({
 EventModel? openedEvent, String errorMessage
});


@override $EventModelCopyWith<$Res>? get openedEvent;

}
/// @nodoc
class _$SingleEventErrorStateCopyWithImpl<$Res>
    implements $SingleEventErrorStateCopyWith<$Res> {
  _$SingleEventErrorStateCopyWithImpl(this._self, this._then);

  final SingleEventErrorState _self;
  final $Res Function(SingleEventErrorState) _then;

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openedEvent = freezed,Object? errorMessage = null,}) {
  return _then(SingleEventErrorState(
openedEvent: freezed == openedEvent ? _self.openedEvent : openedEvent // ignore: cast_nullable_to_non_nullable
as EventModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SingleEventState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get openedEvent {
    if (_self.openedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.openedEvent!, (value) {
    return _then(_self.copyWith(openedEvent: value));
  });
}
}

// dart format on
