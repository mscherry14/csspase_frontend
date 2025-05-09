// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParticipantModel {

 PersonModel get person; int get accrual;
/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantModelCopyWith<ParticipantModel> get copyWith => _$ParticipantModelCopyWithImpl<ParticipantModel>(this as ParticipantModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantModel&&(identical(other.person, person) || other.person == person)&&(identical(other.accrual, accrual) || other.accrual == accrual));
}


@override
int get hashCode => Object.hash(runtimeType,person,accrual);

@override
String toString() {
  return 'ParticipantModel(person: $person, accrual: $accrual)';
}


}

/// @nodoc
abstract mixin class $ParticipantModelCopyWith<$Res>  {
  factory $ParticipantModelCopyWith(ParticipantModel value, $Res Function(ParticipantModel) _then) = _$ParticipantModelCopyWithImpl;
@useResult
$Res call({
 PersonModel person, int accrual
});




}
/// @nodoc
class _$ParticipantModelCopyWithImpl<$Res>
    implements $ParticipantModelCopyWith<$Res> {
  _$ParticipantModelCopyWithImpl(this._self, this._then);

  final ParticipantModel _self;
  final $Res Function(ParticipantModel) _then;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? person = null,Object? accrual = null,}) {
  return _then(ParticipantModel(
person: null == person ? _self.person : person // ignore: cast_nullable_to_non_nullable
as PersonModel,accrual: null == accrual ? _self.accrual : accrual // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


// dart format on
