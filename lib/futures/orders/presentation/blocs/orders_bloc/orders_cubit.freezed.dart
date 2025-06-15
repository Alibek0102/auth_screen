// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitialState value) initial,
    required TResult Function(_OrderLoaderState value) loader,
    required TResult Function(_OrderSuccessState value) success,
    required TResult Function(_OrderErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitialState value)? initial,
    TResult? Function(_OrderLoaderState value)? loader,
    TResult? Function(_OrderSuccessState value)? success,
    TResult? Function(_OrderErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitialState value)? initial,
    TResult Function(_OrderLoaderState value)? loader,
    TResult Function(_OrderSuccessState value)? success,
    TResult Function(_OrderErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrderInitialStateImplCopyWith<$Res> {
  factory _$$OrderInitialStateImplCopyWith(_$OrderInitialStateImpl value,
          $Res Function(_$OrderInitialStateImpl) then) =
      __$$OrderInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderInitialStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderInitialStateImpl>
    implements _$$OrderInitialStateImplCopyWith<$Res> {
  __$$OrderInitialStateImplCopyWithImpl(_$OrderInitialStateImpl _value,
      $Res Function(_$OrderInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderInitialStateImpl implements _OrderInitialState {
  const _$OrderInitialStateImpl();

  @override
  String toString() {
    return 'OrdersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitialState value) initial,
    required TResult Function(_OrderLoaderState value) loader,
    required TResult Function(_OrderSuccessState value) success,
    required TResult Function(_OrderErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitialState value)? initial,
    TResult? Function(_OrderLoaderState value)? loader,
    TResult? Function(_OrderSuccessState value)? success,
    TResult? Function(_OrderErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitialState value)? initial,
    TResult Function(_OrderLoaderState value)? loader,
    TResult Function(_OrderSuccessState value)? success,
    TResult Function(_OrderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OrderInitialState implements OrdersState {
  const factory _OrderInitialState() = _$OrderInitialStateImpl;
}

/// @nodoc
abstract class _$$OrderLoaderStateImplCopyWith<$Res> {
  factory _$$OrderLoaderStateImplCopyWith(_$OrderLoaderStateImpl value,
          $Res Function(_$OrderLoaderStateImpl) then) =
      __$$OrderLoaderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoaderStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderLoaderStateImpl>
    implements _$$OrderLoaderStateImplCopyWith<$Res> {
  __$$OrderLoaderStateImplCopyWithImpl(_$OrderLoaderStateImpl _value,
      $Res Function(_$OrderLoaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderLoaderStateImpl implements _OrderLoaderState {
  const _$OrderLoaderStateImpl();

  @override
  String toString() {
    return 'OrdersState.loader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoaderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return loader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitialState value) initial,
    required TResult Function(_OrderLoaderState value) loader,
    required TResult Function(_OrderSuccessState value) success,
    required TResult Function(_OrderErrorState value) error,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitialState value)? initial,
    TResult? Function(_OrderLoaderState value)? loader,
    TResult? Function(_OrderSuccessState value)? success,
    TResult? Function(_OrderErrorState value)? error,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitialState value)? initial,
    TResult Function(_OrderLoaderState value)? loader,
    TResult Function(_OrderSuccessState value)? success,
    TResult Function(_OrderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _OrderLoaderState implements OrdersState {
  const factory _OrderLoaderState() = _$OrderLoaderStateImpl;
}

/// @nodoc
abstract class _$$OrderSuccessStateImplCopyWith<$Res> {
  factory _$$OrderSuccessStateImplCopyWith(_$OrderSuccessStateImpl value,
          $Res Function(_$OrderSuccessStateImpl) then) =
      __$$OrderSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderSuccessStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderSuccessStateImpl>
    implements _$$OrderSuccessStateImplCopyWith<$Res> {
  __$$OrderSuccessStateImplCopyWithImpl(_$OrderSuccessStateImpl _value,
      $Res Function(_$OrderSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderSuccessStateImpl implements _OrderSuccessState {
  const _$OrderSuccessStateImpl();

  @override
  String toString() {
    return 'OrdersState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitialState value) initial,
    required TResult Function(_OrderLoaderState value) loader,
    required TResult Function(_OrderSuccessState value) success,
    required TResult Function(_OrderErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitialState value)? initial,
    TResult? Function(_OrderLoaderState value)? loader,
    TResult? Function(_OrderSuccessState value)? success,
    TResult? Function(_OrderErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitialState value)? initial,
    TResult Function(_OrderLoaderState value)? loader,
    TResult Function(_OrderSuccessState value)? success,
    TResult Function(_OrderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _OrderSuccessState implements OrdersState {
  const factory _OrderSuccessState() = _$OrderSuccessStateImpl;
}

/// @nodoc
abstract class _$$OrderErrorStateImplCopyWith<$Res> {
  factory _$$OrderErrorStateImplCopyWith(_$OrderErrorStateImpl value,
          $Res Function(_$OrderErrorStateImpl) then) =
      __$$OrderErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderErrorStateImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$OrderErrorStateImpl>
    implements _$$OrderErrorStateImplCopyWith<$Res> {
  __$$OrderErrorStateImplCopyWithImpl(
      _$OrderErrorStateImpl _value, $Res Function(_$OrderErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderErrorStateImpl implements _OrderErrorState {
  const _$OrderErrorStateImpl();

  @override
  String toString() {
    return 'OrdersState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderInitialState value) initial,
    required TResult Function(_OrderLoaderState value) loader,
    required TResult Function(_OrderSuccessState value) success,
    required TResult Function(_OrderErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderInitialState value)? initial,
    TResult? Function(_OrderLoaderState value)? loader,
    TResult? Function(_OrderSuccessState value)? success,
    TResult? Function(_OrderErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderInitialState value)? initial,
    TResult Function(_OrderLoaderState value)? loader,
    TResult Function(_OrderSuccessState value)? success,
    TResult Function(_OrderErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _OrderErrorState implements OrdersState {
  const factory _OrderErrorState() = _$OrderErrorStateImpl;
}
