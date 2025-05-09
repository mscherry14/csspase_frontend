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



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventInfoModel&&(identical(other.text, text) || other.text == text)&&(identical(other.isDate, isDate) || other.isDate == isDate));
}


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
  return _then(EventInfoModel(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isDate: null == isDate ? _self.isDate : isDate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


// dart format on
