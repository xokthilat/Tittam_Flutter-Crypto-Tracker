// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coinlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinlistStateTearOff {
  const _$CoinlistStateTearOff();

  _CoinListLoading loading() {
    return const _CoinListLoading();
  }

  _CoinListContent content(List<Coin> listCoin) {
    return _CoinListContent(
      listCoin,
    );
  }

  _CoinListError error(Exception e) {
    return _CoinListError(
      e,
    );
  }
}

/// @nodoc
const $CoinlistState = _$CoinlistStateTearOff();

/// @nodoc
mixin _$CoinlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinListLoading value) loading,
    required TResult Function(_CoinListContent value) content,
    required TResult Function(_CoinListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinlistStateCopyWith<$Res> {
  factory $CoinlistStateCopyWith(
          CoinlistState value, $Res Function(CoinlistState) then) =
      _$CoinlistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinlistStateCopyWithImpl<$Res>
    implements $CoinlistStateCopyWith<$Res> {
  _$CoinlistStateCopyWithImpl(this._value, this._then);

  final CoinlistState _value;
  // ignore: unused_field
  final $Res Function(CoinlistState) _then;
}

/// @nodoc
abstract class _$CoinListLoadingCopyWith<$Res> {
  factory _$CoinListLoadingCopyWith(
          _CoinListLoading value, $Res Function(_CoinListLoading) then) =
      __$CoinListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CoinListLoadingCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res>
    implements _$CoinListLoadingCopyWith<$Res> {
  __$CoinListLoadingCopyWithImpl(
      _CoinListLoading _value, $Res Function(_CoinListLoading) _then)
      : super(_value, (v) => _then(v as _CoinListLoading));

  @override
  _CoinListLoading get _value => super._value as _CoinListLoading;
}

/// @nodoc

class _$_CoinListLoading implements _CoinListLoading {
  const _$_CoinListLoading();

  @override
  String toString() {
    return 'CoinlistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CoinListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinListLoading value) loading,
    required TResult Function(_CoinListContent value) content,
    required TResult Function(_CoinListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CoinListLoading implements CoinlistState {
  const factory _CoinListLoading() = _$_CoinListLoading;
}

/// @nodoc
abstract class _$CoinListContentCopyWith<$Res> {
  factory _$CoinListContentCopyWith(
          _CoinListContent value, $Res Function(_CoinListContent) then) =
      __$CoinListContentCopyWithImpl<$Res>;
  $Res call({List<Coin> listCoin});
}

/// @nodoc
class __$CoinListContentCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res>
    implements _$CoinListContentCopyWith<$Res> {
  __$CoinListContentCopyWithImpl(
      _CoinListContent _value, $Res Function(_CoinListContent) _then)
      : super(_value, (v) => _then(v as _CoinListContent));

  @override
  _CoinListContent get _value => super._value as _CoinListContent;

  @override
  $Res call({
    Object? listCoin = freezed,
  }) {
    return _then(_CoinListContent(
      listCoin == freezed
          ? _value.listCoin
          : listCoin // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
    ));
  }
}

/// @nodoc

class _$_CoinListContent implements _CoinListContent {
  const _$_CoinListContent(this.listCoin);

  @override
  final List<Coin> listCoin;

  @override
  String toString() {
    return 'CoinlistState.content(listCoin: $listCoin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinListContent &&
            const DeepCollectionEquality().equals(other.listCoin, listCoin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(listCoin));

  @JsonKey(ignore: true)
  @override
  _$CoinListContentCopyWith<_CoinListContent> get copyWith =>
      __$CoinListContentCopyWithImpl<_CoinListContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(Exception e) error,
  }) {
    return content(listCoin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
  }) {
    return content?.call(listCoin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(listCoin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinListLoading value) loading,
    required TResult Function(_CoinListContent value) content,
    required TResult Function(_CoinListError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _CoinListContent implements CoinlistState {
  const factory _CoinListContent(List<Coin> listCoin) = _$_CoinListContent;

  List<Coin> get listCoin;
  @JsonKey(ignore: true)
  _$CoinListContentCopyWith<_CoinListContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CoinListErrorCopyWith<$Res> {
  factory _$CoinListErrorCopyWith(
          _CoinListError value, $Res Function(_CoinListError) then) =
      __$CoinListErrorCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$CoinListErrorCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res>
    implements _$CoinListErrorCopyWith<$Res> {
  __$CoinListErrorCopyWithImpl(
      _CoinListError _value, $Res Function(_CoinListError) _then)
      : super(_value, (v) => _then(v as _CoinListError));

  @override
  _CoinListError get _value => super._value as _CoinListError;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_CoinListError(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_CoinListError implements _CoinListError {
  const _$_CoinListError(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'CoinlistState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinListError &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  _$CoinListErrorCopyWith<_CoinListError> get copyWith =>
      __$CoinListErrorCopyWithImpl<_CoinListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CoinListLoading value) loading,
    required TResult Function(_CoinListContent value) content,
    required TResult Function(_CoinListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CoinListLoading value)? loading,
    TResult Function(_CoinListContent value)? content,
    TResult Function(_CoinListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CoinListError implements CoinlistState {
  const factory _CoinListError(Exception e) = _$_CoinListError;

  Exception get e;
  @JsonKey(ignore: true)
  _$CoinListErrorCopyWith<_CoinListError> get copyWith =>
      throw _privateConstructorUsedError;
}
