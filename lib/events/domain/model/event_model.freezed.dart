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

 String get id; String get headline; List<EventInfoModel> get infoList; DateTime get deadline; List<PersonModel> get teachersList; List<ParticipantModel> get participantsList; int get actualBalance; int get allBalance;
/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventModelCopyWith<EventModel> get copyWith => _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.headline, headline) || other.headline == headline)&&const DeepCollectionEquality().equals(other.infoList, infoList)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&const DeepCollectionEquality().equals(other.teachersList, teachersList)&&const DeepCollectionEquality().equals(other.participantsList, participantsList)&&(identical(other.actualBalance, actualBalance) || other.actualBalance == actualBalance)&&(identical(other.allBalance, allBalance) || other.allBalance == allBalance));
}


@override
int get hashCode => Object.hash(runtimeType,id,headline,const DeepCollectionEquality().hash(infoList),deadline,const DeepCollectionEquality().hash(teachersList),const DeepCollectionEquality().hash(participantsList),actualBalance,allBalance);

@override
String toString() {
  return 'EventModel(id: $id, headline: $headline, infoList: $infoList, deadline: $deadline, teachersList: $teachersList, participantsList: $participantsList, actualBalance: $actualBalance, allBalance: $allBalance)';
}


}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res>  {
  factory $EventModelCopyWith(EventModel value, $Res Function(EventModel) _then) = _$EventModelCopyWithImpl;
@useResult
$Res call({
 String id, String headline, List<EventInfoModel> infoList, DateTime deadline, List<PersonModel> teachersList, List<ParticipantModel> participantsList, int actualBalance, int allBalance
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? headline = null,Object? infoList = null,Object? deadline = null,Object? teachersList = null,Object? participantsList = null,Object? actualBalance = null,Object? allBalance = null,}) {
  return _then(EventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,headline: null == headline ? _self.headline : headline // ignore: cast_nullable_to_non_nullable
as String,infoList: null == infoList ? _self.infoList : infoList // ignore: cast_nullable_to_non_nullable
as List<EventInfoModel>,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,teachersList: null == teachersList ? _self.teachersList : teachersList // ignore: cast_nullable_to_non_nullable
as List<PersonModel>,participantsList: null == participantsList ? _self.participantsList : participantsList // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,actualBalance: null == actualBalance ? _self.actualBalance : actualBalance // ignore: cast_nullable_to_non_nullable
as int,allBalance: null == allBalance ? _self.allBalance : allBalance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


// dart format on
