// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String cardNumber, String maskedCardNumber)
        selectedCard,
    required TResult Function(PaymentCardExceptions exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult? Function(PaymentCardExceptions exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult Function(PaymentCardExceptions exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentSelectedCard value) selectedCard,
    required TResult Function(_PaymentErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentSelectedCard value)? selectedCard,
    TResult? Function(_PaymentErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentSelectedCard value)? selectedCard,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentInitialStateImplCopyWith<$Res> {
  factory _$$PaymentInitialStateImplCopyWith(_$PaymentInitialStateImpl value,
          $Res Function(_$PaymentInitialStateImpl) then) =
      __$$PaymentInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentInitialStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentInitialStateImpl>
    implements _$$PaymentInitialStateImplCopyWith<$Res> {
  __$$PaymentInitialStateImplCopyWithImpl(_$PaymentInitialStateImpl _value,
      $Res Function(_$PaymentInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentInitialStateImpl implements _PaymentInitialState {
  const _$PaymentInitialStateImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String cardNumber, String maskedCardNumber)
        selectedCard,
    required TResult Function(PaymentCardExceptions exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult? Function(PaymentCardExceptions exception)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult Function(PaymentCardExceptions exception)? error,
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
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentSelectedCard value) selectedCard,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentSelectedCard value)? selectedCard,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentSelectedCard value)? selectedCard,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentInitialState implements PaymentState {
  const factory _PaymentInitialState() = _$PaymentInitialStateImpl;
}

/// @nodoc
abstract class _$$PaymentSelectedCardImplCopyWith<$Res> {
  factory _$$PaymentSelectedCardImplCopyWith(_$PaymentSelectedCardImpl value,
          $Res Function(_$PaymentSelectedCardImpl) then) =
      __$$PaymentSelectedCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardNumber, String maskedCardNumber});
}

/// @nodoc
class __$$PaymentSelectedCardImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentSelectedCardImpl>
    implements _$$PaymentSelectedCardImplCopyWith<$Res> {
  __$$PaymentSelectedCardImplCopyWithImpl(_$PaymentSelectedCardImpl _value,
      $Res Function(_$PaymentSelectedCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? maskedCardNumber = null,
  }) {
    return _then(_$PaymentSelectedCardImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      maskedCardNumber: null == maskedCardNumber
          ? _value.maskedCardNumber
          : maskedCardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSelectedCardImpl implements _PaymentSelectedCard {
  const _$PaymentSelectedCardImpl(
      {required this.cardNumber, required this.maskedCardNumber});

  @override
  final String cardNumber;
  @override
  final String maskedCardNumber;

  @override
  String toString() {
    return 'PaymentState.selectedCard(cardNumber: $cardNumber, maskedCardNumber: $maskedCardNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSelectedCardImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.maskedCardNumber, maskedCardNumber) ||
                other.maskedCardNumber == maskedCardNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, maskedCardNumber);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSelectedCardImplCopyWith<_$PaymentSelectedCardImpl> get copyWith =>
      __$$PaymentSelectedCardImplCopyWithImpl<_$PaymentSelectedCardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String cardNumber, String maskedCardNumber)
        selectedCard,
    required TResult Function(PaymentCardExceptions exception) error,
  }) {
    return selectedCard(cardNumber, maskedCardNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult? Function(PaymentCardExceptions exception)? error,
  }) {
    return selectedCard?.call(cardNumber, maskedCardNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult Function(PaymentCardExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (selectedCard != null) {
      return selectedCard(cardNumber, maskedCardNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentSelectedCard value) selectedCard,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return selectedCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentSelectedCard value)? selectedCard,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return selectedCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentSelectedCard value)? selectedCard,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (selectedCard != null) {
      return selectedCard(this);
    }
    return orElse();
  }
}

abstract class _PaymentSelectedCard implements PaymentState {
  const factory _PaymentSelectedCard(
      {required final String cardNumber,
      required final String maskedCardNumber}) = _$PaymentSelectedCardImpl;

  String get cardNumber;
  String get maskedCardNumber;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSelectedCardImplCopyWith<_$PaymentSelectedCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentErrorStateImplCopyWith<$Res> {
  factory _$$PaymentErrorStateImplCopyWith(_$PaymentErrorStateImpl value,
          $Res Function(_$PaymentErrorStateImpl) then) =
      __$$PaymentErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentCardExceptions exception});
}

/// @nodoc
class __$$PaymentErrorStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentErrorStateImpl>
    implements _$$PaymentErrorStateImplCopyWith<$Res> {
  __$$PaymentErrorStateImplCopyWithImpl(_$PaymentErrorStateImpl _value,
      $Res Function(_$PaymentErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$PaymentErrorStateImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as PaymentCardExceptions,
    ));
  }
}

/// @nodoc

class _$PaymentErrorStateImpl implements _PaymentErrorState {
  const _$PaymentErrorStateImpl({required this.exception});

  @override
  final PaymentCardExceptions exception;

  @override
  String toString() {
    return 'PaymentState.error(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentErrorStateImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentErrorStateImplCopyWith<_$PaymentErrorStateImpl> get copyWith =>
      __$$PaymentErrorStateImplCopyWithImpl<_$PaymentErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String cardNumber, String maskedCardNumber)
        selectedCard,
    required TResult Function(PaymentCardExceptions exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult? Function(PaymentCardExceptions exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String cardNumber, String maskedCardNumber)? selectedCard,
    TResult Function(PaymentCardExceptions exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentInitialState value) initial,
    required TResult Function(_PaymentSelectedCard value) selectedCard,
    required TResult Function(_PaymentErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentInitialState value)? initial,
    TResult? Function(_PaymentSelectedCard value)? selectedCard,
    TResult? Function(_PaymentErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentInitialState value)? initial,
    TResult Function(_PaymentSelectedCard value)? selectedCard,
    TResult Function(_PaymentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PaymentErrorState implements PaymentState {
  const factory _PaymentErrorState(
          {required final PaymentCardExceptions exception}) =
      _$PaymentErrorStateImpl;

  PaymentCardExceptions get exception;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentErrorStateImplCopyWith<_$PaymentErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
