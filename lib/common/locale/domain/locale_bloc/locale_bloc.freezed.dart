// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocaleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocaleEvent()';
}


}

/// @nodoc
class $LocaleEventCopyWith<$Res>  {
$LocaleEventCopyWith(LocaleEvent _, $Res Function(LocaleEvent) __);
}


/// @nodoc


class LocaleChanged implements LocaleEvent {
   LocaleChanged(this.languageCode);
  

 final  String languageCode;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleChangedCopyWith<LocaleChanged> get copyWith => _$LocaleChangedCopyWithImpl<LocaleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleChanged&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'LocaleEvent.localeChanged(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LocaleChangedCopyWith<$Res> implements $LocaleEventCopyWith<$Res> {
  factory $LocaleChangedCopyWith(LocaleChanged value, $Res Function(LocaleChanged) _then) = _$LocaleChangedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$LocaleChangedCopyWithImpl<$Res>
    implements $LocaleChangedCopyWith<$Res> {
  _$LocaleChangedCopyWithImpl(this._self, this._then);

  final LocaleChanged _self;
  final $Res Function(LocaleChanged) _then;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(LocaleChanged(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LocaleReload implements LocaleEvent {
   LocaleReload(this.response);
  

 final  SimpleResponse<String> response;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleReloadCopyWith<LocaleReload> get copyWith => _$LocaleReloadCopyWithImpl<LocaleReload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleReload&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'LocaleEvent.reload(response: $response)';
}


}

/// @nodoc
abstract mixin class $LocaleReloadCopyWith<$Res> implements $LocaleEventCopyWith<$Res> {
  factory $LocaleReloadCopyWith(LocaleReload value, $Res Function(LocaleReload) _then) = _$LocaleReloadCopyWithImpl;
@useResult
$Res call({
 SimpleResponse<String> response
});


$SimpleResponseCopyWith<String, $Res> get response;

}
/// @nodoc
class _$LocaleReloadCopyWithImpl<$Res>
    implements $LocaleReloadCopyWith<$Res> {
  _$LocaleReloadCopyWithImpl(this._self, this._then);

  final LocaleReload _self;
  final $Res Function(LocaleReload) _then;

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(LocaleReload(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SimpleResponse<String>,
  ));
}

/// Create a copy of LocaleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SimpleResponseCopyWith<String, $Res> get response {
  
  return $SimpleResponseCopyWith<String, $Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class LocaleInit implements LocaleEvent {
   LocaleInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LocaleEvent.init()';
}


}




/// @nodoc
mixin _$LocaleState {

 String get languageCode;
/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocaleStateCopyWith<LocaleState> get copyWith => _$LocaleStateCopyWithImpl<LocaleState>(this as LocaleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocaleState&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'LocaleState(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LocaleStateCopyWith<$Res>  {
  factory $LocaleStateCopyWith(LocaleState value, $Res Function(LocaleState) _then) = _$LocaleStateCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$LocaleStateCopyWithImpl<$Res>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._self, this._then);

  final LocaleState _self;
  final $Res Function(LocaleState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageCode = null,}) {
  return _then(_self.copyWith(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _LocaleState implements LocaleState {
  const _LocaleState({required this.languageCode});
  

@override final  String languageCode;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocaleStateCopyWith<_LocaleState> get copyWith => __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocaleState&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode);

@override
String toString() {
  return 'LocaleState(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$LocaleStateCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(_LocaleState value, $Res Function(_LocaleState) _then) = __$LocaleStateCopyWithImpl;
@override @useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class __$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(this._self, this._then);

  final _LocaleState _self;
  final $Res Function(_LocaleState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(_LocaleState(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LocaleErrorState implements LocaleState {
  const _LocaleErrorState({required this.languageCode, required this.errorMessage});
  

@override final  String languageCode;
 final  String errorMessage;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocaleErrorStateCopyWith<_LocaleErrorState> get copyWith => __$LocaleErrorStateCopyWithImpl<_LocaleErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocaleErrorState&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,errorMessage);

@override
String toString() {
  return 'LocaleState.error(languageCode: $languageCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$LocaleErrorStateCopyWith<$Res> implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleErrorStateCopyWith(_LocaleErrorState value, $Res Function(_LocaleErrorState) _then) = __$LocaleErrorStateCopyWithImpl;
@override @useResult
$Res call({
 String languageCode, String errorMessage
});




}
/// @nodoc
class __$LocaleErrorStateCopyWithImpl<$Res>
    implements _$LocaleErrorStateCopyWith<$Res> {
  __$LocaleErrorStateCopyWithImpl(this._self, this._then);

  final _LocaleErrorState _self;
  final $Res Function(_LocaleErrorState) _then;

/// Create a copy of LocaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? errorMessage = null,}) {
  return _then(_LocaleErrorState(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
