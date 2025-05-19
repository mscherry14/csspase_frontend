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

@JsonKey(name: "id") String get id;@JsonKey(name: "name") String get name;// @JsonKey(name: "photo")
// @PhotoConverter()
// ImageProvider? photo,
@JsonKey(name: "sent") int get sent;
/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantModelCopyWith<ParticipantModel> get copyWith => _$ParticipantModelCopyWithImpl<ParticipantModel>(this as ParticipantModel, _$identity);

  /// Serializes this ParticipantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sent, sent) || other.sent == sent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sent);

@override
String toString() {
  return 'ParticipantModel(id: $id, name: $name, sent: $sent)';
}


}

/// @nodoc
abstract mixin class $ParticipantModelCopyWith<$Res>  {
  factory $ParticipantModelCopyWith(ParticipantModel value, $Res Function(ParticipantModel) _then) = _$ParticipantModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "sent") int sent
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sent: null == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ParticipantModel implements ParticipantModel {
  const _ParticipantModel({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "sent") required this.sent});
  factory _ParticipantModel.fromJson(Map<String, dynamic> json) => _$ParticipantModelFromJson(json);

@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "name") final  String name;
// @JsonKey(name: "photo")
// @PhotoConverter()
// ImageProvider? photo,
@override@JsonKey(name: "sent") final  int sent;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantModelCopyWith<_ParticipantModel> get copyWith => __$ParticipantModelCopyWithImpl<_ParticipantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sent, sent) || other.sent == sent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sent);

@override
String toString() {
  return 'ParticipantModel(id: $id, name: $name, sent: $sent)';
}


}

/// @nodoc
abstract mixin class _$ParticipantModelCopyWith<$Res> implements $ParticipantModelCopyWith<$Res> {
  factory _$ParticipantModelCopyWith(_ParticipantModel value, $Res Function(_ParticipantModel) _then) = __$ParticipantModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name") String name,@JsonKey(name: "sent") int sent
});




}
/// @nodoc
class __$ParticipantModelCopyWithImpl<$Res>
    implements _$ParticipantModelCopyWith<$Res> {
  __$ParticipantModelCopyWithImpl(this._self, this._then);

  final _ParticipantModel _self;
  final $Res Function(_ParticipantModel) _then;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sent = null,}) {
  return _then(_ParticipantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sent: null == sent ? _self.sent : sent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
