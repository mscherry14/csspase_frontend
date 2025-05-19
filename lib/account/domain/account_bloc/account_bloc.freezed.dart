// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent()';
}


}

/// @nodoc
class $AccountEventCopyWith<$Res>  {
$AccountEventCopyWith(AccountEvent _, $Res Function(AccountEvent) __);
}


/// @nodoc


class AccountLogin implements AccountEvent {
   AccountLogin();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLogin);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.login()';
}


}




/// @nodoc
mixin _$AccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState()';
}


}

/// @nodoc
class $AccountStateCopyWith<$Res>  {
$AccountStateCopyWith(AccountState _, $Res Function(AccountState) __);
}


/// @nodoc


class AccountUnauthenticatedState implements AccountState {
  const AccountUnauthenticatedState({this.errorMessage});
  

 final  String? errorMessage;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountUnauthenticatedStateCopyWith<AccountUnauthenticatedState> get copyWith => _$AccountUnauthenticatedStateCopyWithImpl<AccountUnauthenticatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountUnauthenticatedState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AccountState.unauthenticated(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AccountUnauthenticatedStateCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory $AccountUnauthenticatedStateCopyWith(AccountUnauthenticatedState value, $Res Function(AccountUnauthenticatedState) _then) = _$AccountUnauthenticatedStateCopyWithImpl;
@useResult
$Res call({
 String? errorMessage
});




}
/// @nodoc
class _$AccountUnauthenticatedStateCopyWithImpl<$Res>
    implements $AccountUnauthenticatedStateCopyWith<$Res> {
  _$AccountUnauthenticatedStateCopyWithImpl(this._self, this._then);

  final AccountUnauthenticatedState _self;
  final $Res Function(AccountUnauthenticatedState) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,}) {
  return _then(AccountUnauthenticatedState(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AccountAuthenticatedState implements AccountState {
  const AccountAuthenticatedState({required final  Set<Roles> userRoles}): _userRoles = userRoles;
  

 final  Set<Roles> _userRoles;
 Set<Roles> get userRoles {
  if (_userRoles is EqualUnmodifiableSetView) return _userRoles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_userRoles);
}


/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountAuthenticatedStateCopyWith<AccountAuthenticatedState> get copyWith => _$AccountAuthenticatedStateCopyWithImpl<AccountAuthenticatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountAuthenticatedState&&const DeepCollectionEquality().equals(other._userRoles, _userRoles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userRoles));

@override
String toString() {
  return 'AccountState.authenticated(userRoles: $userRoles)';
}


}

/// @nodoc
abstract mixin class $AccountAuthenticatedStateCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory $AccountAuthenticatedStateCopyWith(AccountAuthenticatedState value, $Res Function(AccountAuthenticatedState) _then) = _$AccountAuthenticatedStateCopyWithImpl;
@useResult
$Res call({
 Set<Roles> userRoles
});




}
/// @nodoc
class _$AccountAuthenticatedStateCopyWithImpl<$Res>
    implements $AccountAuthenticatedStateCopyWith<$Res> {
  _$AccountAuthenticatedStateCopyWithImpl(this._self, this._then);

  final AccountAuthenticatedState _self;
  final $Res Function(AccountAuthenticatedState) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userRoles = null,}) {
  return _then(AccountAuthenticatedState(
userRoles: null == userRoles ? _self._userRoles : userRoles // ignore: cast_nullable_to_non_nullable
as Set<Roles>,
  ));
}


}

// dart format on
