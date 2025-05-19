// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accrual_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccrualModel {

@JsonKey(name: "receiverName") String get receiverName;@JsonKey(name: "amount") int get accrual;
/// Create a copy of AccrualModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccrualModelCopyWith<AccrualModel> get copyWith => _$AccrualModelCopyWithImpl<AccrualModel>(this as AccrualModel, _$identity);

  /// Serializes this AccrualModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccrualModel&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.accrual, accrual) || other.accrual == accrual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverName,accrual);

@override
String toString() {
  return 'AccrualModel(receiverName: $receiverName, accrual: $accrual)';
}


}

/// @nodoc
abstract mixin class $AccrualModelCopyWith<$Res>  {
  factory $AccrualModelCopyWith(AccrualModel value, $Res Function(AccrualModel) _then) = _$AccrualModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "receiverName") String receiverName,@JsonKey(name: "amount") int accrual
});




}
/// @nodoc
class _$AccrualModelCopyWithImpl<$Res>
    implements $AccrualModelCopyWith<$Res> {
  _$AccrualModelCopyWithImpl(this._self, this._then);

  final AccrualModel _self;
  final $Res Function(AccrualModel) _then;

/// Create a copy of AccrualModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiverName = null,Object? accrual = null,}) {
  return _then(_self.copyWith(
receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,accrual: null == accrual ? _self.accrual : accrual // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable()
class _AccrualModel implements AccrualModel {
  const _AccrualModel({@JsonKey(name: "receiverName") required this.receiverName, @JsonKey(name: "amount") required this.accrual});
  factory _AccrualModel.fromJson(Map<String, dynamic> json) => _$AccrualModelFromJson(json);

@override@JsonKey(name: "receiverName") final  String receiverName;
@override@JsonKey(name: "amount") final  int accrual;

/// Create a copy of AccrualModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccrualModelCopyWith<_AccrualModel> get copyWith => __$AccrualModelCopyWithImpl<_AccrualModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccrualModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccrualModel&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.accrual, accrual) || other.accrual == accrual));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiverName,accrual);

@override
String toString() {
  return 'AccrualModel(receiverName: $receiverName, accrual: $accrual)';
}


}

/// @nodoc
abstract mixin class _$AccrualModelCopyWith<$Res> implements $AccrualModelCopyWith<$Res> {
  factory _$AccrualModelCopyWith(_AccrualModel value, $Res Function(_AccrualModel) _then) = __$AccrualModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "receiverName") String receiverName,@JsonKey(name: "amount") int accrual
});




}
/// @nodoc
class __$AccrualModelCopyWithImpl<$Res>
    implements _$AccrualModelCopyWith<$Res> {
  __$AccrualModelCopyWithImpl(this._self, this._then);

  final _AccrualModel _self;
  final $Res Function(_AccrualModel) _then;

/// Create a copy of AccrualModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiverName = null,Object? accrual = null,}) {
  return _then(_AccrualModel(
receiverName: null == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String,accrual: null == accrual ? _self.accrual : accrual // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
