// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionInfoModel {

@JsonKey(name: "headline") String get transactionHeadline;@JsonKey(name: "created_at")@DateTimeConverter() DateTime get transactionTime;@JsonKey(name: "amount") int get variation;
/// Create a copy of TransactionInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInfoModelCopyWith<TransactionInfoModel> get copyWith => _$TransactionInfoModelCopyWithImpl<TransactionInfoModel>(this as TransactionInfoModel, _$identity);

  /// Serializes this TransactionInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInfoModel&&(identical(other.transactionHeadline, transactionHeadline) || other.transactionHeadline == transactionHeadline)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.variation, variation) || other.variation == variation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionHeadline,transactionTime,variation);

@override
String toString() {
  return 'TransactionInfoModel(transactionHeadline: $transactionHeadline, transactionTime: $transactionTime, variation: $variation)';
}


}

/// @nodoc
abstract mixin class $TransactionInfoModelCopyWith<$Res>  {
  factory $TransactionInfoModelCopyWith(TransactionInfoModel value, $Res Function(TransactionInfoModel) _then) = _$TransactionInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "headline") String transactionHeadline,@JsonKey(name: "created_at")@DateTimeConverter() DateTime transactionTime,@JsonKey(name: "amount") int variation
});




}
/// @nodoc
class _$TransactionInfoModelCopyWithImpl<$Res>
    implements $TransactionInfoModelCopyWith<$Res> {
  _$TransactionInfoModelCopyWithImpl(this._self, this._then);

  final TransactionInfoModel _self;
  final $Res Function(TransactionInfoModel) _then;

/// Create a copy of TransactionInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionHeadline = null,Object? transactionTime = null,Object? variation = null,}) {
  return _then(_self.copyWith(
transactionHeadline: null == transactionHeadline ? _self.transactionHeadline : transactionHeadline // ignore: cast_nullable_to_non_nullable
as String,transactionTime: null == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as DateTime,variation: null == variation ? _self.variation : variation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionInfoModel implements TransactionInfoModel {
  const _TransactionInfoModel({@JsonKey(name: "headline") required this.transactionHeadline, @JsonKey(name: "created_at")@DateTimeConverter() required this.transactionTime, @JsonKey(name: "amount") required this.variation});
  factory _TransactionInfoModel.fromJson(Map<String, dynamic> json) => _$TransactionInfoModelFromJson(json);

@override@JsonKey(name: "headline") final  String transactionHeadline;
@override@JsonKey(name: "created_at")@DateTimeConverter() final  DateTime transactionTime;
@override@JsonKey(name: "amount") final  int variation;

/// Create a copy of TransactionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionInfoModelCopyWith<_TransactionInfoModel> get copyWith => __$TransactionInfoModelCopyWithImpl<_TransactionInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionInfoModel&&(identical(other.transactionHeadline, transactionHeadline) || other.transactionHeadline == transactionHeadline)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.variation, variation) || other.variation == variation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionHeadline,transactionTime,variation);

@override
String toString() {
  return 'TransactionInfoModel(transactionHeadline: $transactionHeadline, transactionTime: $transactionTime, variation: $variation)';
}


}

/// @nodoc
abstract mixin class _$TransactionInfoModelCopyWith<$Res> implements $TransactionInfoModelCopyWith<$Res> {
  factory _$TransactionInfoModelCopyWith(_TransactionInfoModel value, $Res Function(_TransactionInfoModel) _then) = __$TransactionInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "headline") String transactionHeadline,@JsonKey(name: "created_at")@DateTimeConverter() DateTime transactionTime,@JsonKey(name: "amount") int variation
});




}
/// @nodoc
class __$TransactionInfoModelCopyWithImpl<$Res>
    implements _$TransactionInfoModelCopyWith<$Res> {
  __$TransactionInfoModelCopyWithImpl(this._self, this._then);

  final _TransactionInfoModel _self;
  final $Res Function(_TransactionInfoModel) _then;

/// Create a copy of TransactionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionHeadline = null,Object? transactionTime = null,Object? variation = null,}) {
  return _then(_TransactionInfoModel(
transactionHeadline: null == transactionHeadline ? _self.transactionHeadline : transactionHeadline // ignore: cast_nullable_to_non_nullable
as String,transactionTime: null == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as DateTime,variation: null == variation ? _self.variation : variation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
