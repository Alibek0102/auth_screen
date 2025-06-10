// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsState {
  String? get size => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
  @useResult
  $Res call({String? size, String? color});
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailsStateImplCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$ProductDetailsStateImplCopyWith(_$ProductDetailsStateImpl value,
          $Res Function(_$ProductDetailsStateImpl) then) =
      __$$ProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? size, String? color});
}

/// @nodoc
class __$$ProductDetailsStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsStateImpl>
    implements _$$ProductDetailsStateImplCopyWith<$Res> {
  __$$ProductDetailsStateImplCopyWithImpl(_$ProductDetailsStateImpl _value,
      $Res Function(_$ProductDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_$ProductDetailsStateImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsStateImpl implements _ProductDetailsState {
  const _$ProductDetailsStateImpl({this.size, this.color});

  @override
  final String? size;
  @override
  final String? color;

  @override
  String toString() {
    return 'ProductDetailsState(size: $size, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsStateImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size, color);

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      __$$ProductDetailsStateImplCopyWithImpl<_$ProductDetailsStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailsState implements ProductDetailsState {
  const factory _ProductDetailsState(
      {final String? size, final String? color}) = _$ProductDetailsStateImpl;

  @override
  String? get size;
  @override
  String? get color;

  /// Create a copy of ProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
