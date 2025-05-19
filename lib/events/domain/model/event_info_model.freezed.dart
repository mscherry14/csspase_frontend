// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventInfoModel {

 String get text; bool get isDate;
/// Create a copy of EventInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventInfoModelCopyWith<EventInfoModel> get copyWith => _$EventInfoModelCopyWithImpl<EventInfoModel>(this as EventInfoModel, _$identity);

  /// Serializes this EventInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventInfoModel&&(identical(other.text, text) || other.text == text)&&(identical(other.isDate, isDate) || other.isDate == isDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isDate);

@override
String toString() {
  return 'EventInfoModel(text: $text, isDate: $isDate)';
}


}

/// @nodoc
abstract mixin class $EventInfoModelCopyWith<$Res>  {
  factory $EventInfoModelCopyWith(EventInfoModel value, $Res Function(EventInfoModel) _then) = _$EventInfoModelCopyWithImpl;
@useResult
$Res call({
 String text, bool isDate
});




}
/// @nodoc
class _$EventInfoModelCopyWithImpl<$Res>
    implements $EventInfoModelCopyWith<$Res> {
  _$EventInfoModelCopyWithImpl(this._self, this._then);

  final EventInfoModel _self;
  final $Res Function(EventInfoModel) _then;

/// Create a copy of EventInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? isDate = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isDate: null == isDate ? _self.isDate : isDate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@JsonSerializable()
class _EventInfoModel implements EventInfoModel {
  const _EventInfoModel({required this.text, required this.isDate});
  factory _EventInfoModel.fromJson(Map<String, dynamic> json) => _$EventInfoModelFromJson(json);

@override final  String text;
@override final  bool isDate;

/// Create a copy of EventInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventInfoModelCopyWith<_EventInfoModel> get copyWith => __$EventInfoModelCopyWithImpl<_EventInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventInfoModel&&(identical(other.text, text) || other.text == text)&&(identical(other.isDate, isDate) || other.isDate == isDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,isDate);

@override
String toString() {
  return 'EventInfoModel(text: $text, isDate: $isDate)';
}


}

/// @nodoc
abstract mixin class _$EventInfoModelCopyWith<$Res> implements $EventInfoModelCopyWith<$Res> {
  factory _$EventInfoModelCopyWith(_EventInfoModel value, $Res Function(_EventInfoModel) _then) = __$EventInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String text, bool isDate
});




}
/// @nodoc
class __$EventInfoModelCopyWithImpl<$Res>
    implements _$EventInfoModelCopyWith<$Res> {
  __$EventInfoModelCopyWithImpl(this._self, this._then);

  final _EventInfoModel _self;
  final $Res Function(_EventInfoModel) _then;

/// Create a copy of EventInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isDate = null,}) {
  return _then(_EventInfoModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isDate: null == isDate ? _self.isDate : isDate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
