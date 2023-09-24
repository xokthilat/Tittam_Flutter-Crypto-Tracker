// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coinlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(NetworkError e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> listCoin)? content,
    TResult? Function(NetworkError e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(NetworkError e)? error,
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
    TResult? Function(_CoinListLoading value)? loading,
    TResult? Function(_CoinListContent value)? content,
    TResult? Function(_CoinListError value)? error,
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
      _$CoinlistStateCopyWithImpl<$Res, CoinlistState>;
}

/// @nodoc
class _$CoinlistStateCopyWithImpl<$Res, $Val extends CoinlistState>
    implements $CoinlistStateCopyWith<$Res> {
  _$CoinlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CoinListLoadingCopyWith<$Res> {
  factory _$$_CoinListLoadingCopyWith(
          _$_CoinListLoading value, $Res Function(_$_CoinListLoading) then) =
      __$$_CoinListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CoinListLoadingCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res, _$_CoinListLoading>
    implements _$$_CoinListLoadingCopyWith<$Res> {
  __$$_CoinListLoadingCopyWithImpl(
      _$_CoinListLoading _value, $Res Function(_$_CoinListLoading) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_CoinListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(NetworkError e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> listCoin)? content,
    TResult? Function(NetworkError e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(NetworkError e)? error,
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
    TResult? Function(_CoinListLoading value)? loading,
    TResult? Function(_CoinListContent value)? content,
    TResult? Function(_CoinListError value)? error,
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
abstract class _$$_CoinListContentCopyWith<$Res> {
  factory _$$_CoinListContentCopyWith(
          _$_CoinListContent value, $Res Function(_$_CoinListContent) then) =
      __$$_CoinListContentCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Coin> listCoin});
}

/// @nodoc
class __$$_CoinListContentCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res, _$_CoinListContent>
    implements _$$_CoinListContentCopyWith<$Res> {
  __$$_CoinListContentCopyWithImpl(
      _$_CoinListContent _value, $Res Function(_$_CoinListContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCoin = null,
  }) {
    return _then(_$_CoinListContent(
      null == listCoin
          ? _value._listCoin
          : listCoin // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
    ));
  }
}

/// @nodoc

class _$_CoinListContent implements _CoinListContent {
  const _$_CoinListContent(final List<Coin> listCoin) : _listCoin = listCoin;

  final List<Coin> _listCoin;
  @override
  List<Coin> get listCoin {
    if (_listCoin is EqualUnmodifiableListView) return _listCoin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCoin);
  }

  @override
  String toString() {
    return 'CoinlistState.content(listCoin: $listCoin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinListContent &&
            const DeepCollectionEquality().equals(other._listCoin, _listCoin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listCoin));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinListContentCopyWith<_$_CoinListContent> get copyWith =>
      __$$_CoinListContentCopyWithImpl<_$_CoinListContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(NetworkError e) error,
  }) {
    return content(listCoin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> listCoin)? content,
    TResult? Function(NetworkError e)? error,
  }) {
    return content?.call(listCoin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(NetworkError e)? error,
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
    TResult? Function(_CoinListLoading value)? loading,
    TResult? Function(_CoinListContent value)? content,
    TResult? Function(_CoinListError value)? error,
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
  const factory _CoinListContent(final List<Coin> listCoin) =
      _$_CoinListContent;

  List<Coin> get listCoin;
  @JsonKey(ignore: true)
  _$$_CoinListContentCopyWith<_$_CoinListContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CoinListErrorCopyWith<$Res> {
  factory _$$_CoinListErrorCopyWith(
          _$_CoinListError value, $Res Function(_$_CoinListError) then) =
      __$$_CoinListErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkError e});

  $NetworkErrorCopyWith<$Res> get e;
}

/// @nodoc
class __$$_CoinListErrorCopyWithImpl<$Res>
    extends _$CoinlistStateCopyWithImpl<$Res, _$_CoinListError>
    implements _$$_CoinListErrorCopyWith<$Res> {
  __$$_CoinListErrorCopyWithImpl(
      _$_CoinListError _value, $Res Function(_$_CoinListError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_CoinListError(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkErrorCopyWith<$Res> get e {
    return $NetworkErrorCopyWith<$Res>(_value.e, (value) {
      return _then(_value.copyWith(e: value));
    });
  }
}

/// @nodoc

class _$_CoinListError implements _CoinListError {
  const _$_CoinListError(this.e);

  @override
  final NetworkError e;

  @override
  String toString() {
    return 'CoinlistState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinListError &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinListErrorCopyWith<_$_CoinListError> get copyWith =>
      __$$_CoinListErrorCopyWithImpl<_$_CoinListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Coin> listCoin) content,
    required TResult Function(NetworkError e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Coin> listCoin)? content,
    TResult? Function(NetworkError e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Coin> listCoin)? content,
    TResult Function(NetworkError e)? error,
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
    TResult? Function(_CoinListLoading value)? loading,
    TResult? Function(_CoinListContent value)? content,
    TResult? Function(_CoinListError value)? error,
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
  const factory _CoinListError(final NetworkError e) = _$_CoinListError;

  NetworkError get e;
  @JsonKey(ignore: true)
  _$$_CoinListErrorCopyWith<_$_CoinListError> get copyWith =>
      throw _privateConstructorUsedError;
}
