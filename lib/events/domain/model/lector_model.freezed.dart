// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lector_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LectorModel {

@JsonKey(name: "id") String get id;@JsonKey(name: "name") String get name;@JsonKey(name: "photo")@PhotoConverter() ImageProvider? get photo;@JsonKey(name: "role") String get role;
/// Create a copy of LectorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LectorModelCopyWith<LectorModel> get copyWith => _$LectorModelCopyWithImpl<LectorModel>(this as LectorModel, _$identity);

  /// Serializes this LectorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LectorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,role);

@override
String toString() {
  return 'LectorModel(id: $id, name: $name, photo: $photo, role: $role)';
}


}

/// @nodoc
abstract mixin class $LectorModelCopyWith<$Res>  {
  factory $LectorModelCopyWith(LectorModel value, $Res Function(LectorModel) _then) = _$LectorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "photo")@PhotoConverter() ImageProvider? photo,@JsonKey(name: "role") String role
});




}
/// @nodoc
class _$LectorModelCopyWithImpl<$Res>
    implements $LectorModelCopyWith<$Res> {
  _$LectorModelCopyWithImpl(this._self, this._then);

  final LectorModel _self;
  final $Res Function(LectorModel) _then;

/// Create a copy of LectorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ImageProvider?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LectorModel implements LectorModel {
  const _LectorModel({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "photo")@PhotoConverter() this.photo, @JsonKey(name: "role") required this.role});
  factory _LectorModel.fromJson(Map<String, dynamic> json) => _$LectorModelFromJson(json);

@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "photo")@PhotoConverter() final  ImageProvider? photo;
@override@JsonKey(name: "role") final  String role;

/// Create a copy of LectorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LectorModelCopyWith<_LectorModel> get copyWith => __$LectorModelCopyWithImpl<_LectorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LectorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LectorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,role);

@override
String toString() {
  return 'LectorModel(id: $id, name: $name, photo: $photo, role: $role)';
}


}

/// @nodoc
abstract mixin class _$LectorModelCopyWith<$Res> implements $LectorModelCopyWith<$Res> {
  factory _$LectorModelCopyWith(_LectorModel value, $Res Function(_LectorModel) _then) = __$LectorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "photo")@PhotoConverter() ImageProvider? photo,@JsonKey(name: "role") String role
});




}
/// @nodoc
class __$LectorModelCopyWithImpl<$Res>
    implements _$LectorModelCopyWith<$Res> {
  __$LectorModelCopyWithImpl(this._self, this._then);

  final _LectorModel _self;
  final $Res Function(_LectorModel) _then;

/// Create a copy of LectorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? role = null,}) {
  return _then(_LectorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as ImageProvider?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
