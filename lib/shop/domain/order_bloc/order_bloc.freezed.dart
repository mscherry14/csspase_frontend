// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderEvent()';
  }
}

/// @nodoc
class $OrderEventCopyWith<$Res> {
  $OrderEventCopyWith(OrderEvent _, $Res Function(OrderEvent) __);
}

/// @nodoc

class OrderStarted implements OrderEvent {
  const OrderStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderEvent.started()';
  }
}

/// @nodoc

class OrderReload implements OrderEvent {
  const OrderReload();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderReload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderEvent.reload()';
  }
}

/// @nodoc
mixin _$OrderState {
  List<Order> get orders;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderStateCopyWith<OrderState> get copyWith =>
      _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderState &&
            const DeepCollectionEquality().equals(other.orders, orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orders));

  @override
  String toString() {
    return 'OrderState(orders: $orders)';
  }
}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) _then) =
      _$OrderStateCopyWithImpl;
  @useResult
  $Res call({List<Order> orders});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_self.copyWith(
      orders: null == orders
          ? _self.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _OrderState implements OrderState {
  const _OrderState({required final List<Order> orders}) : _orders = orders;

  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderStateCopyWith<_OrderState> get copyWith =>
      __$OrderStateCopyWithImpl<_OrderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @override
  String toString() {
    return 'OrderState(orders: $orders)';
  }
}

/// @nodoc
abstract mixin class _$OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$OrderStateCopyWith(
          _OrderState value, $Res Function(_OrderState) _then) =
      __$OrderStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Order> orders});
}

/// @nodoc
class __$OrderStateCopyWithImpl<$Res> implements _$OrderStateCopyWith<$Res> {
  __$OrderStateCopyWithImpl(this._self, this._then);

  final _OrderState _self;
  final $Res Function(_OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orders = null,
  }) {
    return _then(_OrderState(
      orders: null == orders
          ? _self._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _OrderErrorState implements OrderState {
  const _OrderErrorState(
      {required final List<Order> orders, required this.errorMessage})
      : _orders = orders;

  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final String errorMessage;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderErrorStateCopyWith<_OrderErrorState> get copyWith =>
      __$OrderErrorStateCopyWithImpl<_OrderErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderErrorState &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), errorMessage);

  @override
  String toString() {
    return 'OrderState.error(orders: $orders, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$OrderErrorStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$OrderErrorStateCopyWith(
          _OrderErrorState value, $Res Function(_OrderErrorState) _then) =
      __$OrderErrorStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Order> orders, String errorMessage});
}

/// @nodoc
class __$OrderErrorStateCopyWithImpl<$Res>
    implements _$OrderErrorStateCopyWith<$Res> {
  __$OrderErrorStateCopyWithImpl(this._self, this._then);

  final _OrderErrorState _self;
  final $Res Function(_OrderErrorState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orders = null,
    Object? errorMessage = null,
  }) {
    return _then(_OrderErrorState(
      orders: null == orders
          ? _self._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
