// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonModel {

 String get id; ImageProvider? get avatar; String get name;
/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonModelCopyWith<PersonModel> get copyWith => _$PersonModelCopyWithImpl<PersonModel>(this as PersonModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,avatar,name);

@override
String toString() {
  return 'PersonModel(id: $id, avatar: $avatar, name: $name)';
}


}

/// @nodoc
abstract mixin class $PersonModelCopyWith<$Res>  {
  factory $PersonModelCopyWith(PersonModel value, $Res Function(PersonModel) _then) = _$PersonModelCopyWithImpl;
@useResult
$Res call({
 String id, ImageProvider<Object>? avatar, String name
});




}
/// @nodoc
class _$PersonModelCopyWithImpl<$Res>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._self, this._then);

  final PersonModel _self;
  final $Res Function(PersonModel) _then;

/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? avatar = freezed,Object? name = null,}) {
  return _then(PersonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as ImageProvider<Object>?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


// dart format on
