// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BalanceEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BalanceEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BalanceEvent()';
  }
}

/// @nodoc
class $BalanceEventCopyWith<$Res> {
  $BalanceEventCopyWith(BalanceEvent _, $Res Function(BalanceEvent) __);
}

/// @nodoc

class BalanceReload implements BalanceEvent {
  const BalanceReload();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BalanceReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BalanceEvent.reload()';
  }
}

/// @nodoc
mixin _$BalanceState {
  int get balance;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalanceStateCopyWith<BalanceState> get copyWith =>
      _$BalanceStateCopyWithImpl<BalanceState>(
          this as BalanceState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalanceState &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @override
  String toString() {
    return 'BalanceState(balance: $balance)';
  }
}

/// @nodoc
abstract mixin class $BalanceStateCopyWith<$Res> {
  factory $BalanceStateCopyWith(
          BalanceState value, $Res Function(BalanceState) _then) =
      _$BalanceStateCopyWithImpl;
  @useResult
  $Res call({int balance});
}

/// @nodoc
class _$BalanceStateCopyWithImpl<$Res> implements $BalanceStateCopyWith<$Res> {
  _$BalanceStateCopyWithImpl(this._self, this._then);

  final BalanceState _self;
  final $Res Function(BalanceState) _then;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_self.copyWith(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _BalanceState implements BalanceState {
  const _BalanceState({required this.balance});

  @override
  final int balance;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalanceStateCopyWith<_BalanceState> get copyWith =>
      __$BalanceStateCopyWithImpl<_BalanceState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalanceState &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @override
  String toString() {
    return 'BalanceState(balance: $balance)';
  }
}

/// @nodoc
abstract mixin class _$BalanceStateCopyWith<$Res>
    implements $BalanceStateCopyWith<$Res> {
  factory _$BalanceStateCopyWith(
          _BalanceState value, $Res Function(_BalanceState) _then) =
      __$BalanceStateCopyWithImpl;
  @override
  @useResult
  $Res call({int balance});
}

/// @nodoc
class __$BalanceStateCopyWithImpl<$Res>
    implements _$BalanceStateCopyWith<$Res> {
  __$BalanceStateCopyWithImpl(this._self, this._then);

  final _BalanceState _self;
  final $Res Function(_BalanceState) _then;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? balance = null,
  }) {
    return _then(_BalanceState(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _BalanceErrorState implements BalanceState {
  const _BalanceErrorState({required this.balance, required this.errorMessage});

  @override
  final int balance;
  final String errorMessage;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalanceErrorStateCopyWith<_BalanceErrorState> get copyWith =>
      __$BalanceErrorStateCopyWithImpl<_BalanceErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalanceErrorState &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance, errorMessage);

  @override
  String toString() {
    return 'BalanceState.error(balance: $balance, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$BalanceErrorStateCopyWith<$Res>
    implements $BalanceStateCopyWith<$Res> {
  factory _$BalanceErrorStateCopyWith(
          _BalanceErrorState value, $Res Function(_BalanceErrorState) _then) =
      __$BalanceErrorStateCopyWithImpl;
  @override
  @useResult
  $Res call({int balance, String errorMessage});
}

/// @nodoc
class __$BalanceErrorStateCopyWithImpl<$Res>
    implements _$BalanceErrorStateCopyWith<$Res> {
  __$BalanceErrorStateCopyWithImpl(this._self, this._then);

  final _BalanceErrorState _self;
  final $Res Function(_BalanceErrorState) _then;

  /// Create a copy of BalanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? balance = null,
    Object? errorMessage = null,
  }) {
    return _then(_BalanceErrorState(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
