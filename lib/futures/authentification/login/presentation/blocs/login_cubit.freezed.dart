// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loader,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loader,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loader,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginErrorState value) error,
    required TResult Function(_LoginLoaderState value) loader,
    required TResult Function(_LoginSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginErrorState value)? error,
    TResult? Function(_LoginLoaderState value)? loader,
    TResult? Function(_LoginSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginErrorState value)? error,
    TResult Function(_LoginLoaderState value)? loader,
    TResult Function(_LoginSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginInitialStateImplCopyWith<$Res> {
  factory _$$LoginInitialStateImplCopyWith(_$LoginInitialStateImpl value,
          $Res Function(_$LoginInitialStateImpl) then) =
      __$$LoginInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialStateImpl>
    implements _$$LoginInitialStateImplCopyWith<$Res> {
  __$$LoginInitialStateImplCopyWithImpl(_$LoginInitialStateImpl _value,
      $Res Function(_$LoginInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginInitialStateImpl
    with DiagnosticableTreeMixin
    implements _LoginInitialState {
  const _$LoginInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loader,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loader,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loader,
    TResult Function()? success,
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
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginErrorState value) error,
    required TResult Function(_LoginLoaderState value) loader,
    required TResult Function(_LoginSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginErrorState value)? error,
    TResult? Function(_LoginLoaderState value)? loader,
    TResult? Function(_LoginSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginErrorState value)? error,
    TResult Function(_LoginLoaderState value)? loader,
    TResult Function(_LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginInitialState implements LoginState {
  const factory _LoginInitialState() = _$LoginInitialStateImpl;
}

/// @nodoc
abstract class _$$LoginErrorStateImplCopyWith<$Res> {
  factory _$$LoginErrorStateImplCopyWith(_$LoginErrorStateImpl value,
          $Res Function(_$LoginErrorStateImpl) then) =
      __$$LoginErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginErrorStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorStateImpl>
    implements _$$LoginErrorStateImplCopyWith<$Res> {
  __$$LoginErrorStateImplCopyWithImpl(
      _$LoginErrorStateImpl _value, $Res Function(_$LoginErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorStateImpl
    with DiagnosticableTreeMixin
    implements _LoginErrorState {
  const _$LoginErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      __$$LoginErrorStateImplCopyWithImpl<_$LoginErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loader,
    required TResult Function() success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loader,
    TResult? Function()? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loader,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginErrorState value) error,
    required TResult Function(_LoginLoaderState value) loader,
    required TResult Function(_LoginSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginErrorState value)? error,
    TResult? Function(_LoginLoaderState value)? loader,
    TResult? Function(_LoginSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginErrorState value)? error,
    TResult Function(_LoginLoaderState value)? loader,
    TResult Function(_LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoginErrorState implements LoginState {
  const factory _LoginErrorState({required final String message}) =
      _$LoginErrorStateImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorStateImplCopyWith<_$LoginErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoaderStateImplCopyWith<$Res> {
  factory _$$LoginLoaderStateImplCopyWith(_$LoginLoaderStateImpl value,
          $Res Function(_$LoginLoaderStateImpl) then) =
      __$$LoginLoaderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoaderStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoaderStateImpl>
    implements _$$LoginLoaderStateImplCopyWith<$Res> {
  __$$LoginLoaderStateImplCopyWithImpl(_$LoginLoaderStateImpl _value,
      $Res Function(_$LoginLoaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoaderStateImpl
    with DiagnosticableTreeMixin
    implements _LoginLoaderState {
  const _$LoginLoaderStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.loader()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.loader'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoaderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loader,
    required TResult Function() success,
  }) {
    return loader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loader,
    TResult? Function()? success,
  }) {
    return loader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loader,
    TResult Function()? success,
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
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginErrorState value) error,
    required TResult Function(_LoginLoaderState value) loader,
    required TResult Function(_LoginSuccessState value) success,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginErrorState value)? error,
    TResult? Function(_LoginLoaderState value)? loader,
    TResult? Function(_LoginSuccessState value)? success,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginErrorState value)? error,
    TResult Function(_LoginLoaderState value)? loader,
    TResult Function(_LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _LoginLoaderState implements LoginState {
  const factory _LoginLoaderState() = _$LoginLoaderStateImpl;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSuccessStateImpl
    with DiagnosticableTreeMixin
    implements _LoginSuccessState {
  const _$LoginSuccessStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loader,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loader,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loader,
    TResult Function()? success,
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
    required TResult Function(_LoginInitialState value) initial,
    required TResult Function(_LoginErrorState value) error,
    required TResult Function(_LoginLoaderState value) loader,
    required TResult Function(_LoginSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginInitialState value)? initial,
    TResult? Function(_LoginErrorState value)? error,
    TResult? Function(_LoginLoaderState value)? loader,
    TResult? Function(_LoginSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginInitialState value)? initial,
    TResult Function(_LoginErrorState value)? error,
    TResult Function(_LoginLoaderState value)? loader,
    TResult Function(_LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccessState implements LoginState {
  const factory _LoginSuccessState() = _$LoginSuccessStateImpl;
}
