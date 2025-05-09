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

 String get transactionHeadline; DateTime get transactionTime; int get variation;
/// Create a copy of TransactionInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionInfoModelCopyWith<TransactionInfoModel> get copyWith => _$TransactionInfoModelCopyWithImpl<TransactionInfoModel>(this as TransactionInfoModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionInfoModel&&(identical(other.transactionHeadline, transactionHeadline) || other.transactionHeadline == transactionHeadline)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.variation, variation) || other.variation == variation));
}


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
 String transactionHeadline, DateTime transactionTime, int variation
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
  return _then(TransactionInfoModel(
transactionHeadline: null == transactionHeadline ? _self.transactionHeadline : transactionHeadline // ignore: cast_nullable_to_non_nullable
as String,transactionTime: null == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as DateTime,variation: null == variation ? _self.variation : variation // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


// dart format on
