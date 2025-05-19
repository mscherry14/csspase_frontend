// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventsEvent()';
}


}

/// @nodoc
class $EventsEventCopyWith<$Res>  {
$EventsEventCopyWith(EventsEvent _, $Res Function(EventsEvent) __);
}


/// @nodoc


class EventsStarted implements EventsEvent {
  const EventsStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventsEvent.started()';
}


}




/// @nodoc


class EventsReload implements EventsEvent {
  const EventsReload();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsReload);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventsEvent.reload()';
}


}




/// @nodoc


class EventsConcreteEventLoad implements EventsEvent {
  const EventsConcreteEventLoad({required this.eventId});
  

 final  String eventId;

/// Create a copy of EventsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventsConcreteEventLoadCopyWith<EventsConcreteEventLoad> get copyWith => _$EventsConcreteEventLoadCopyWithImpl<EventsConcreteEventLoad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsConcreteEventLoad&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'EventsEvent.loadEvent(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $EventsConcreteEventLoadCopyWith<$Res> implements $EventsEventCopyWith<$Res> {
  factory $EventsConcreteEventLoadCopyWith(EventsConcreteEventLoad value, $Res Function(EventsConcreteEventLoad) _then) = _$EventsConcreteEventLoadCopyWithImpl;
@useResult
$Res call({
 String eventId
});




}
/// @nodoc
class _$EventsConcreteEventLoadCopyWithImpl<$Res>
    implements $EventsConcreteEventLoadCopyWith<$Res> {
  _$EventsConcreteEventLoadCopyWithImpl(this._self, this._then);

  final EventsConcreteEventLoad _self;
  final $Res Function(EventsConcreteEventLoad) _then;

/// Create a copy of EventsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventId = null,}) {
  return _then(EventsConcreteEventLoad(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EventsState {

 List<EventShortModel> get events; EventModel? get lastOpenedEvent;
/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventsStateCopyWith<EventsState> get copyWith => _$EventsStateCopyWithImpl<EventsState>(this as EventsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsState&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.lastOpenedEvent, lastOpenedEvent) || other.lastOpenedEvent == lastOpenedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(events),lastOpenedEvent);

@override
String toString() {
  return 'EventsState(events: $events, lastOpenedEvent: $lastOpenedEvent)';
}


}

/// @nodoc
abstract mixin class $EventsStateCopyWith<$Res>  {
  factory $EventsStateCopyWith(EventsState value, $Res Function(EventsState) _then) = _$EventsStateCopyWithImpl;
@useResult
$Res call({
 List<EventShortModel> events, EventModel? lastOpenedEvent
});


$EventModelCopyWith<$Res>? get lastOpenedEvent;

}
/// @nodoc
class _$EventsStateCopyWithImpl<$Res>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._self, this._then);

  final EventsState _self;
  final $Res Function(EventsState) _then;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? events = null,Object? lastOpenedEvent = freezed,}) {
  return _then(_self.copyWith(
events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<EventShortModel>,lastOpenedEvent: freezed == lastOpenedEvent ? _self.lastOpenedEvent : lastOpenedEvent // ignore: cast_nullable_to_non_nullable
as EventModel?,
  ));
}
/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get lastOpenedEvent {
    if (_self.lastOpenedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.lastOpenedEvent!, (value) {
    return _then(_self.copyWith(lastOpenedEvent: value));
  });
}
}


/// @nodoc


class EventsOkState implements EventsState {
  const EventsOkState({required final  List<EventShortModel> events, this.lastOpenedEvent}): _events = events;
  

 final  List<EventShortModel> _events;
@override List<EventShortModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override final  EventModel? lastOpenedEvent;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventsOkStateCopyWith<EventsOkState> get copyWith => _$EventsOkStateCopyWithImpl<EventsOkState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsOkState&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.lastOpenedEvent, lastOpenedEvent) || other.lastOpenedEvent == lastOpenedEvent));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),lastOpenedEvent);

@override
String toString() {
  return 'EventsState(events: $events, lastOpenedEvent: $lastOpenedEvent)';
}


}

/// @nodoc
abstract mixin class $EventsOkStateCopyWith<$Res> implements $EventsStateCopyWith<$Res> {
  factory $EventsOkStateCopyWith(EventsOkState value, $Res Function(EventsOkState) _then) = _$EventsOkStateCopyWithImpl;
@override @useResult
$Res call({
 List<EventShortModel> events, EventModel? lastOpenedEvent
});


@override $EventModelCopyWith<$Res>? get lastOpenedEvent;

}
/// @nodoc
class _$EventsOkStateCopyWithImpl<$Res>
    implements $EventsOkStateCopyWith<$Res> {
  _$EventsOkStateCopyWithImpl(this._self, this._then);

  final EventsOkState _self;
  final $Res Function(EventsOkState) _then;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? lastOpenedEvent = freezed,}) {
  return _then(EventsOkState(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<EventShortModel>,lastOpenedEvent: freezed == lastOpenedEvent ? _self.lastOpenedEvent : lastOpenedEvent // ignore: cast_nullable_to_non_nullable
as EventModel?,
  ));
}

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get lastOpenedEvent {
    if (_self.lastOpenedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.lastOpenedEvent!, (value) {
    return _then(_self.copyWith(lastOpenedEvent: value));
  });
}
}

/// @nodoc


class EventsErrorState implements EventsState {
  const EventsErrorState({required final  List<EventShortModel> events, this.lastOpenedEvent, required this.errorMessage}): _events = events;
  

 final  List<EventShortModel> _events;
@override List<EventShortModel> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}

@override final  EventModel? lastOpenedEvent;
 final  String errorMessage;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventsErrorStateCopyWith<EventsErrorState> get copyWith => _$EventsErrorStateCopyWithImpl<EventsErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsErrorState&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.lastOpenedEvent, lastOpenedEvent) || other.lastOpenedEvent == lastOpenedEvent)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_events),lastOpenedEvent,errorMessage);

@override
String toString() {
  return 'EventsState.error(events: $events, lastOpenedEvent: $lastOpenedEvent, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EventsErrorStateCopyWith<$Res> implements $EventsStateCopyWith<$Res> {
  factory $EventsErrorStateCopyWith(EventsErrorState value, $Res Function(EventsErrorState) _then) = _$EventsErrorStateCopyWithImpl;
@override @useResult
$Res call({
 List<EventShortModel> events, EventModel? lastOpenedEvent, String errorMessage
});


@override $EventModelCopyWith<$Res>? get lastOpenedEvent;

}
/// @nodoc
class _$EventsErrorStateCopyWithImpl<$Res>
    implements $EventsErrorStateCopyWith<$Res> {
  _$EventsErrorStateCopyWithImpl(this._self, this._then);

  final EventsErrorState _self;
  final $Res Function(EventsErrorState) _then;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? events = null,Object? lastOpenedEvent = freezed,Object? errorMessage = null,}) {
  return _then(EventsErrorState(
events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<EventShortModel>,lastOpenedEvent: freezed == lastOpenedEvent ? _self.lastOpenedEvent : lastOpenedEvent // ignore: cast_nullable_to_non_nullable
as EventModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventModelCopyWith<$Res>? get lastOpenedEvent {
    if (_self.lastOpenedEvent == null) {
    return null;
  }

  return $EventModelCopyWith<$Res>(_self.lastOpenedEvent!, (value) {
    return _then(_self.copyWith(lastOpenedEvent: value));
  });
}
}

// dart format on
