// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coinlist_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinlistEventTearOff {
  const _$CoinlistEventTearOff();

  _FetchCoinListEvent fetchCoinList() {
    return const _FetchCoinListEvent();
  }
}

/// @nodoc
const $CoinlistEvent = _$CoinlistEventTearOff();

/// @nodoc
mixin _$CoinlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCoinList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCoinList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCoinList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoinListEvent value) fetchCoinList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchCoinListEvent value)? fetchCoinList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoinListEvent value)? fetchCoinList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinlistEventCopyWith<$Res> {
  factory $CoinlistEventCopyWith(
          CoinlistEvent value, $Res Function(CoinlistEvent) then) =
      _$CoinlistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinlistEventCopyWithImpl<$Res>
    implements $CoinlistEventCopyWith<$Res> {
  _$CoinlistEventCopyWithImpl(this._value, this._then);

  final CoinlistEvent _value;
  // ignore: unused_field
  final $Res Function(CoinlistEvent) _then;
}

/// @nodoc
abstract class _$FetchCoinListEventCopyWith<$Res> {
  factory _$FetchCoinListEventCopyWith(
          _FetchCoinListEvent value, $Res Function(_FetchCoinListEvent) then) =
      __$FetchCoinListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchCoinListEventCopyWithImpl<$Res>
    extends _$CoinlistEventCopyWithImpl<$Res>
    implements _$FetchCoinListEventCopyWith<$Res> {
  __$FetchCoinListEventCopyWithImpl(
      _FetchCoinListEvent _value, $Res Function(_FetchCoinListEvent) _then)
      : super(_value, (v) => _then(v as _FetchCoinListEvent));

  @override
  _FetchCoinListEvent get _value => super._value as _FetchCoinListEvent;
}

/// @nodoc

class _$_FetchCoinListEvent implements _FetchCoinListEvent {
  const _$_FetchCoinListEvent();

  @override
  String toString() {
    return 'CoinlistEvent.fetchCoinList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchCoinListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCoinList,
  }) {
    return fetchCoinList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchCoinList,
  }) {
    return fetchCoinList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCoinList,
    required TResult orElse(),
  }) {
    if (fetchCoinList != null) {
      return fetchCoinList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoinListEvent value) fetchCoinList,
  }) {
    return fetchCoinList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchCoinListEvent value)? fetchCoinList,
  }) {
    return fetchCoinList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoinListEvent value)? fetchCoinList,
    required TResult orElse(),
  }) {
    if (fetchCoinList != null) {
      return fetchCoinList(this);
    }
    return orElse();
  }
}

abstract class _FetchCoinListEvent implements CoinlistEvent {
  const factory _FetchCoinListEvent() = _$_FetchCoinListEvent;
}
