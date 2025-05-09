// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent()';
}


}

/// @nodoc
class $ThemeEventCopyWith<$Res>  {
$ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}


/// @nodoc


class ThemeChanged implements ThemeEvent {
   ThemeChanged(this.themeMode);
  

 final  CustomThemeMode themeMode;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeChangedCopyWith<ThemeChanged> get copyWith => _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeChanged&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeEvent.themeChanged(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeChangedCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ThemeChangedCopyWith(ThemeChanged value, $Res Function(ThemeChanged) _then) = _$ThemeChangedCopyWithImpl;
@useResult
$Res call({
 CustomThemeMode themeMode
});




}
/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(this._self, this._then);

  final ThemeChanged _self;
  final $Res Function(ThemeChanged) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(ThemeChanged(
null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as CustomThemeMode,
  ));
}


}

/// @nodoc


class ThemeReload implements ThemeEvent {
   ThemeReload(this.response);
  

 final  SimpleResponse<CustomThemeMode> response;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeReloadCopyWith<ThemeReload> get copyWith => _$ThemeReloadCopyWithImpl<ThemeReload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeReload&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'ThemeEvent.reload(response: $response)';
}


}

/// @nodoc
abstract mixin class $ThemeReloadCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ThemeReloadCopyWith(ThemeReload value, $Res Function(ThemeReload) _then) = _$ThemeReloadCopyWithImpl;
@useResult
$Res call({
 SimpleResponse<CustomThemeMode> response
});


$SimpleResponseCopyWith<CustomThemeMode, $Res> get response;

}
/// @nodoc
class _$ThemeReloadCopyWithImpl<$Res>
    implements $ThemeReloadCopyWith<$Res> {
  _$ThemeReloadCopyWithImpl(this._self, this._then);

  final ThemeReload _self;
  final $Res Function(ThemeReload) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(ThemeReload(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SimpleResponse<CustomThemeMode>,
  ));
}

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleResponseCopyWith<CustomThemeMode, $Res> get response {
  
  return $SimpleResponseCopyWith<CustomThemeMode, $Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class ThemeInit implements ThemeEvent {
   ThemeInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ThemeEvent.init()';
}


}




/// @nodoc
mixin _$ThemeState {

 CustomThemeMode get themeMode;
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeStateCopyWith<ThemeState> get copyWith => _$ThemeStateCopyWithImpl<ThemeState>(this as ThemeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeState(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeStateCopyWith<$Res>  {
  factory $ThemeStateCopyWith(ThemeState value, $Res Function(ThemeState) _then) = _$ThemeStateCopyWithImpl;
@useResult
$Res call({
 CustomThemeMode themeMode
});




}
/// @nodoc
class _$ThemeStateCopyWithImpl<$Res>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._self, this._then);

  final ThemeState _self;
  final $Res Function(ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as CustomThemeMode,
  ));
}

}


/// @nodoc


class _ThemeState implements ThemeState {
  const _ThemeState({required this.themeMode});
  

@override final  CustomThemeMode themeMode;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeStateCopyWith<_ThemeState> get copyWith => __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeState(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(_ThemeState value, $Res Function(_ThemeState) _then) = __$ThemeStateCopyWithImpl;
@override @useResult
$Res call({
 CustomThemeMode themeMode
});




}
/// @nodoc
class __$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(this._self, this._then);

  final _ThemeState _self;
  final $Res Function(_ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_ThemeState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as CustomThemeMode,
  ));
}


}

/// @nodoc


class _ThemeErrorState implements ThemeState {
  const _ThemeErrorState({required this.themeMode, required this.errorMessage});
  

@override final  CustomThemeMode themeMode;
 final  String errorMessage;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeErrorStateCopyWith<_ThemeErrorState> get copyWith => __$ThemeErrorStateCopyWithImpl<_ThemeErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeErrorState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,errorMessage);

@override
String toString() {
  return 'ThemeState.error(themeMode: $themeMode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ThemeErrorStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeErrorStateCopyWith(_ThemeErrorState value, $Res Function(_ThemeErrorState) _then) = __$ThemeErrorStateCopyWithImpl;
@override @useResult
$Res call({
 CustomThemeMode themeMode, String errorMessage
});




}
/// @nodoc
class __$ThemeErrorStateCopyWithImpl<$Res>
    implements _$ThemeErrorStateCopyWith<$Res> {
  __$ThemeErrorStateCopyWithImpl(this._self, this._then);

  final _ThemeErrorState _self;
  final $Res Function(_ThemeErrorState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? errorMessage = null,}) {
  return _then(_ThemeErrorState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as CustomThemeMode,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
