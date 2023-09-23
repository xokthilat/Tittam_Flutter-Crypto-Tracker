// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_holder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiHolder {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchListCoin value) fetchListCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchListCoin value)? fetchListCoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchListCoin value)? fetchListCoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiHolderCopyWith<$Res> {
  factory $ApiHolderCopyWith(ApiHolder value, $Res Function(ApiHolder) then) =
      _$ApiHolderCopyWithImpl<$Res, ApiHolder>;
}

/// @nodoc
class _$ApiHolderCopyWithImpl<$Res, $Val extends ApiHolder>
    implements $ApiHolderCopyWith<$Res> {
  _$ApiHolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchListCoinCopyWith<$Res> {
  factory _$$_FetchListCoinCopyWith(
          _$_FetchListCoin value, $Res Function(_$_FetchListCoin) then) =
      __$$_FetchListCoinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchListCoinCopyWithImpl<$Res>
    extends _$ApiHolderCopyWithImpl<$Res, _$_FetchListCoin>
    implements _$$_FetchListCoinCopyWith<$Res> {
  __$$_FetchListCoinCopyWithImpl(
      _$_FetchListCoin _value, $Res Function(_$_FetchListCoin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchListCoin extends _FetchListCoin {
  const _$_FetchListCoin() : super._();

  @override
  String toString() {
    return 'ApiHolder.fetchListCoin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchListCoin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchListCoin,
  }) {
    return fetchListCoin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchListCoin,
  }) {
    return fetchListCoin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchListCoin,
    required TResult orElse(),
  }) {
    if (fetchListCoin != null) {
      return fetchListCoin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchListCoin value) fetchListCoin,
  }) {
    return fetchListCoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchListCoin value)? fetchListCoin,
  }) {
    return fetchListCoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchListCoin value)? fetchListCoin,
    required TResult orElse(),
  }) {
    if (fetchListCoin != null) {
      return fetchListCoin(this);
    }
    return orElse();
  }
}

abstract class _FetchListCoin extends ApiHolder {
  const factory _FetchListCoin() = _$_FetchListCoin;
  const _FetchListCoin._() : super._();
}
