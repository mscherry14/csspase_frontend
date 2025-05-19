// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventModel {

 String get id; String get headline; String get shortDescription; List<LectorModel> get teachersList; List<ParticipantModel> get participantsList; List<EventInfoModel> get infoList; DateTime? get deadline; int get actualBalance; int get allBalance;
/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventModelCopyWith<EventModel> get copyWith => _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.headline, headline) || other.headline == headline)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other.teachersList, teachersList)&&const DeepCollectionEquality().equals(other.participantsList, participantsList)&&const DeepCollectionEquality().equals(other.infoList, infoList)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.allBalance, allBalance) || other.allBalance == allBalance));
}


@override
int get hashCode => Object.hash(runtimeType,id,headline,shortDescription,const DeepCollectionEquality().hash(teachersList),const DeepCollectionEquality().hash(participantsList),const DeepCollectionEquality().hash(infoList),deadline,actualBalance,allBalance);

@override
String toString() {
  return 'EventModel(id: $id, headline: $headline, shortDescription: $shortDescription, teachersList: $teachersList, participantsList: $participantsList, infoList: $infoList, deadline: $deadline, actualBalance: $actualBalance, allBalance: $allBalance)';
}


}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res>  {
  factory $EventModelCopyWith(EventModel value, $Res Function(EventModel) _then) = _$EventModelCopyWithImpl;
@useResult
$Res call({
 String id, String headline, String shortDescription, List<LectorModel> teachersList, List<ParticipantModel> participantsList, List<EventInfoModel> infoList, DateTime? deadline, int actualBalance, int allBalance
});




}
/// @nodoc
class _$EventModelCopyWithImpl<$Res>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? headline = null,Object? shortDescription = null,Object? teachersList = null,Object? participantsList = null,Object? infoList = null,Object? deadline = freezed,Object? actualBalance = null,Object? allBalance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,teachersList: null == teachersList ? _self.teachersList : teachersList // ignore: cast_nullable_to_non_nullable
as List<LectorModel>,participantsList: null == participantsList ? _self.participantsList : participantsList // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,infoList: null == infoList ? _self.infoList : infoList // ignore: cast_nullable_to_non_nullable
as List<EventInfoModel>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as int,allBalance: null == allBalance ? _self.allBalance : allBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _EventModel implements EventModel {
  const _EventModel({required this.id, required this.headline, this.shortDescription = "", required final  List<LectorModel> teachersList, required final  List<ParticipantModel> participantsList, final  List<EventInfoModel> infoList = const [], this.deadline, required this.actualBalance, required this.allBalance}): _teachersList = teachersList,_participantsList = participantsList,_infoList = infoList;
  

@override final  String id;
@override final  String headline;
@override@JsonKey() final  String shortDescription;
 final  List<LectorModel> _teachersList;
@override List<LectorModel> get teachersList {
  if (_teachersList is EqualUnmodifiableListView) return _teachersList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_teachersList);
}

 final  List<ParticipantModel> _participantsList;
@override List<ParticipantModel> get participantsList {
  if (_participantsList is EqualUnmodifiableListView) return _participantsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participantsList);
}

 final  List<EventInfoModel> _infoList;
@override@JsonKey() List<EventInfoModel> get infoList {
  if (_infoList is EqualUnmodifiableListView) return _infoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_infoList);
}

@override final  DateTime? deadline;
@override final  int actualBalance;
@override final  int allBalance;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventModelCopyWith<_EventModel> get copyWith => __$EventModelCopyWithImpl<_EventModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.headline, headline) || other.headline == headline)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&const DeepCollectionEquality().equals(other._teachersList, _teachersList)&&const DeepCollectionEquality().equals(other._participantsList, _participantsList)&&const DeepCollectionEquality().equals(other._infoList, _infoList)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.allBalance, allBalance) || other.allBalance == allBalance));
}


@override
int get hashCode => Object.hash(runtimeType,id,headline,shortDescription,const DeepCollectionEquality().hash(_teachersList),const DeepCollectionEquality().hash(_participantsList),const DeepCollectionEquality().hash(_infoList),deadline,actualBalance,allBalance);

@override
String toString() {
  return 'EventModel(id: $id, headline: $headline, shortDescription: $shortDescription, teachersList: $teachersList, participantsList: $participantsList, infoList: $infoList, deadline: $deadline, actualBalance: $actualBalance, allBalance: $allBalance)';
}


}

/// @nodoc
abstract mixin class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(_EventModel value, $Res Function(_EventModel) _then) = __$EventModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String headline, String shortDescription, List<LectorModel> teachersList, List<ParticipantModel> participantsList, List<EventInfoModel> infoList, DateTime? deadline, int actualBalance, int allBalance
});




}
/// @nodoc
class __$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(this._self, this._then);

  final _EventModel _self;
  final $Res Function(_EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? headline = null,Object? shortDescription = null,Object? teachersList = null,Object? participantsList = null,Object? infoList = null,Object? deadline = freezed,Object? actualBalance = null,Object? allBalance = null,}) {
  return _then(_EventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,teachersList: null == teachersList ? _self._teachersList : teachersList // ignore: cast_nullable_to_non_nullable
as List<LectorModel>,participantsList: null == participantsList ? _self._participantsList : participantsList // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,infoList: null == infoList ? _self._infoList : infoList // ignore: cast_nullable_to_non_nullable
as List<EventInfoModel>,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime?,actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as int,allBalance: null == allBalance ? _self.allBalance : allBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
