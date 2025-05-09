// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationEvent {

 Roles get navigationMode;
/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationEventCopyWith<NavigationEvent> get copyWith => _$NavigationEventCopyWithImpl<NavigationEvent>(this as NavigationEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationEvent&&(identical(other.navigationMode, navigationMode) || other.navigationMode == navigationMode));
}


@override
int get hashCode => Object.hash(runtimeType,navigationMode);

@override
String toString() {
  return 'NavigationEvent(navigationMode: $navigationMode)';
}


}

/// @nodoc
abstract mixin class $NavigationEventCopyWith<$Res>  {
  factory $NavigationEventCopyWith(NavigationEvent value, $Res Function(NavigationEvent) _then) = _$NavigationEventCopyWithImpl;
@useResult
$Res call({
 Roles navigationMode
});




}
/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._self, this._then);

  final NavigationEvent _self;
  final $Res Function(NavigationEvent) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? navigationMode = null,}) {
  return _then(_self.copyWith(
navigationMode: null == navigationMode ? _self.navigationMode : navigationMode // ignore: cast_nullable_to_non_nullable
as Roles,
  ));
}

}


/// @nodoc


class NavigationChanged implements NavigationEvent {
   NavigationChanged(this.navigationMode);
  

@override final  Roles navigationMode;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationChangedCopyWith<NavigationChanged> get copyWith => _$NavigationChangedCopyWithImpl<NavigationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationChanged&&(identical(other.navigationMode, navigationMode) || other.navigationMode == navigationMode));
}


@override
int get hashCode => Object.hash(runtimeType,navigationMode);

@override
String toString() {
  return 'NavigationEvent.navigationChanged(navigationMode: $navigationMode)';
}


}

/// @nodoc
abstract mixin class $NavigationChangedCopyWith<$Res> implements $NavigationEventCopyWith<$Res> {
  factory $NavigationChangedCopyWith(NavigationChanged value, $Res Function(NavigationChanged) _then) = _$NavigationChangedCopyWithImpl;
@override @useResult
$Res call({
 Roles navigationMode
});




}
/// @nodoc
class _$NavigationChangedCopyWithImpl<$Res>
    implements $NavigationChangedCopyWith<$Res> {
  _$NavigationChangedCopyWithImpl(this._self, this._then);

  final NavigationChanged _self;
  final $Res Function(NavigationChanged) _then;

/// Create a copy of NavigationEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navigationMode = null,}) {
  return _then(NavigationChanged(
null == navigationMode ? _self.navigationMode : navigationMode // ignore: cast_nullable_to_non_nullable
as Roles,
  ));
}


}

/// @nodoc
mixin _$NavigationState {

 Roles get navigationMode;
/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationStateCopyWith<NavigationState> get copyWith => _$NavigationStateCopyWithImpl<NavigationState>(this as NavigationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationState&&(identical(other.navigationMode, navigationMode) || other.navigationMode == navigationMode));
}


@override
int get hashCode => Object.hash(runtimeType,navigationMode);

@override
String toString() {
  return 'NavigationState(navigationMode: $navigationMode)';
}


}

/// @nodoc
abstract mixin class $NavigationStateCopyWith<$Res>  {
  factory $NavigationStateCopyWith(NavigationState value, $Res Function(NavigationState) _then) = _$NavigationStateCopyWithImpl;
@useResult
$Res call({
 Roles navigationMode
});




}
/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._self, this._then);

  final NavigationState _self;
  final $Res Function(NavigationState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? navigationMode = null,}) {
  return _then(_self.copyWith(
navigationMode: null == navigationMode ? _self.navigationMode : navigationMode // ignore: cast_nullable_to_non_nullable
as Roles,
  ));
}

}


/// @nodoc


class _NavigationState implements NavigationState {
  const _NavigationState({required this.navigationMode});
  

@override final  Roles navigationMode;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationStateCopyWith<_NavigationState> get copyWith => __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationState&&(identical(other.navigationMode, navigationMode) || other.navigationMode == navigationMode));
}


@override
int get hashCode => Object.hash(runtimeType,navigationMode);

@override
String toString() {
  return 'NavigationState(navigationMode: $navigationMode)';
}


}

/// @nodoc
abstract mixin class _$NavigationStateCopyWith<$Res> implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(_NavigationState value, $Res Function(_NavigationState) _then) = __$NavigationStateCopyWithImpl;
@override @useResult
$Res call({
 Roles navigationMode
});




}
/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(this._self, this._then);

  final _NavigationState _self;
  final $Res Function(_NavigationState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navigationMode = null,}) {
  return _then(_NavigationState(
navigationMode: null == navigationMode ? _self.navigationMode : navigationMode // ignore: cast_nullable_to_non_nullable
as Roles,
  ));
}


}

/// @nodoc


class _NavigationErrorState implements NavigationState {
  const _NavigationErrorState({required this.navigationMode, required this.errorMessage});
  

@override final  Roles navigationMode;
 final  String errorMessage;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NavigationErrorStateCopyWith<_NavigationErrorState> get copyWith => __$NavigationErrorStateCopyWithImpl<_NavigationErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NavigationErrorState&&(identical(other.navigationMode, navigationMode) || other.navigationMode == navigationMode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,navigationMode,errorMessage);

@override
String toString() {
  return 'NavigationState.error(navigationMode: $navigationMode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NavigationErrorStateCopyWith<$Res> implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationErrorStateCopyWith(_NavigationErrorState value, $Res Function(_NavigationErrorState) _then) = __$NavigationErrorStateCopyWithImpl;
@override @useResult
$Res call({
 Roles navigationMode, String errorMessage
});




}
/// @nodoc
class __$NavigationErrorStateCopyWithImpl<$Res>
    implements _$NavigationErrorStateCopyWith<$Res> {
  __$NavigationErrorStateCopyWithImpl(this._self, this._then);

  final _NavigationErrorState _self;
  final $Res Function(_NavigationErrorState) _then;

/// Create a copy of NavigationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? navigationMode = null,Object? errorMessage = null,}) {
  return _then(_NavigationErrorState(
navigationMode: null == navigationMode ? _self.navigationMode : navigationMode // ignore: cast_nullable_to_non_nullable
as Roles,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
