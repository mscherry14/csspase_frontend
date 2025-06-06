// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_short_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventShortModel {

@JsonKey(name: "eventId") String get id;@JsonKey(name: "title") String get headline;@JsonKey(readValue: EventShortModel._readInfoList) List<EventInfoModel> get infoList;@JsonKey(name: "bankAccountDeadline")@DateTimeNullConverter() DateTime? get deadline;@JsonKey(name: "balance") int get actualBalance;@JsonKey(name: "init_balance") int get allBalance;
/// Create a copy of EventShortModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventShortModelCopyWith<EventShortModel> get copyWith => _$EventShortModelCopyWithImpl<EventShortModel>(this as EventShortModel, _$identity);

  /// Serializes this EventShortModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventShortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.headline, headline) || other.headline == headline)&&const DeepCollectionEquality().equals(other.infoList, infoList)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.allBalance, allBalance) || other.allBalance == allBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,headline,const DeepCollectionEquality().hash(infoList),deadline,actualBalance,allBalance);

@override
String toString() {
  return 'EventShortModel(id: $id, headline: $headline, infoList: $infoList, deadline: $deadline, actualBalance: $actualBalance, allBalance: $allBalance)';
}


}

/// @nodoc
abstract mixin class $EventShortModelCopyWith<$Res>  {
  factory $EventShortModelCopyWith(EventShortModel value, $Res Function(EventShortModel) _then) = _$EventShortModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "eventId") String id,@JsonKey(name: "title") String headline,@JsonKey(readValue: EventShortModel._readInfoList) List<EventInfoModel> infoList,@JsonKey(name: "bankAccountDeadline")@DateTimeNullConverter() DateTime? deadline,@JsonKey(name: "balance") int actualBalance,@JsonKey(name: "init_balance") int allBalance
});




}
/// @nodoc
class _$EventShortModelCopyWithImpl<$Res>
    implements $EventShortModelCopyWith<$Res> {
  _$EventShortModelCopyWithImpl(this._self, this._then);

  final EventShortModel _self;
  final $Res Function(EventShortModel) _then;

/// Create a copy of EventShortModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? headline = null,Object? infoList = null,Object? deadline = freezed,Object? actualBalance = null,Object? allBalance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String,infoList: null == infoList ? _self.infoList : infoList // ignore: cast_nullable_to_non_nullable
as List<EventInfoModel>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as int,allBalance: null == allBalance ? _self.allBalance : allBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _EventShortModel implements EventShortModel {
  const _EventShortModel({@JsonKey(name: "eventId") required this.id, @JsonKey(name: "title") required this.headline, @JsonKey(readValue: EventShortModel._readInfoList) final  List<EventInfoModel> infoList = const [], @JsonKey(name: "bankAccountDeadline")@DateTimeNullConverter() this.deadline, @JsonKey(name: "balance") required this.actualBalance, @JsonKey(name: "init_balance") required this.allBalance}): _infoList = infoList;
  factory _EventShortModel.fromJson(Map<String, dynamic> json) => _$EventShortModelFromJson(json);

@override@JsonKey(name: "eventId") final  String id;
@override@JsonKey(name: "title") final  String headline;
 final  List<EventInfoModel> _infoList;
@override@JsonKey(readValue: EventShortModel._readInfoList) List<EventInfoModel> get infoList {
  if (_infoList is EqualUnmodifiableListView) return _infoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_infoList);
}

@override@JsonKey(name: "bankAccountDeadline")@DateTimeNullConverter() final  DateTime? deadline;
@override@JsonKey(name: "balance") final  int actualBalance;
@override@JsonKey(name: "init_balance") final  int allBalance;

/// Create a copy of EventShortModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventShortModelCopyWith<_EventShortModel> get copyWith => __$EventShortModelCopyWithImpl<_EventShortModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventShortModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventShortModel&&(identical(other.id, id) || other.id == id)&&(identical(other.headline, headline) || other.headline == headline)&&const DeepCollectionEquality().equals(other._infoList, _infoList)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.allBalance, allBalance) || other.allBalance == allBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,headline,const DeepCollectionEquality().hash(_infoList),deadline,actualBalance,allBalance);

@override
String toString() {
  return 'EventShortModel(id: $id, headline: $headline, infoList: $infoList, deadline: $deadline, actualBalance: $actualBalance, allBalance: $allBalance)';
}


}

/// @nodoc
abstract mixin class _$EventShortModelCopyWith<$Res> implements $EventShortModelCopyWith<$Res> {
  factory _$EventShortModelCopyWith(_EventShortModel value, $Res Function(_EventShortModel) _then) = __$EventShortModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "eventId") String id,@JsonKey(name: "title") String headline,@JsonKey(readValue: EventShortModel._readInfoList) List<EventInfoModel> infoList,@JsonKey(name: "bankAccountDeadline")@DateTimeNullConverter() DateTime? deadline,@JsonKey(name: "balance") int actualBalance,@JsonKey(name: "init_balance") int allBalance
});




}
/// @nodoc
class __$EventShortModelCopyWithImpl<$Res>
    implements _$EventShortModelCopyWith<$Res> {
  __$EventShortModelCopyWithImpl(this._self, this._then);

  final _EventShortModel _self;
  final $Res Function(_EventShortModel) _then;

/// Create a copy of EventShortModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? headline = null,Object? infoList = null,Object? deadline = freezed,Object? actualBalance = null,Object? allBalance = null,}) {
  return _then(_EventShortModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String,infoList: null == infoList ? _self._infoList : infoList // ignore: cast_nullable_to_non_nullable
as List<EventInfoModel>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as int,allBalance: null == allBalance ? _self.allBalance : allBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
