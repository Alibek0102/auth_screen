// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<CartProductEntity> cartProducts) hasProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<CartProductEntity> cartProducts)? hasProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<CartProductEntity> cartProducts)? hasProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEmptyState value) empty,
    required TResult Function(_CartHasProducts value) hasProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEmptyState value)? empty,
    TResult? Function(_CartHasProducts value)? hasProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEmptyState value)? empty,
    TResult Function(_CartHasProducts value)? hasProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CartEmptyStateImplCopyWith<$Res> {
  factory _$$CartEmptyStateImplCopyWith(_$CartEmptyStateImpl value,
          $Res Function(_$CartEmptyStateImpl) then) =
      __$$CartEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEmptyStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartEmptyStateImpl>
    implements _$$CartEmptyStateImplCopyWith<$Res> {
  __$$CartEmptyStateImplCopyWithImpl(
      _$CartEmptyStateImpl _value, $Res Function(_$CartEmptyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartEmptyStateImpl extends _CartEmptyState {
  const _$CartEmptyStateImpl() : super._();

  @override
  String toString() {
    return 'CartState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<CartProductEntity> cartProducts) hasProducts,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<CartProductEntity> cartProducts)? hasProducts,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<CartProductEntity> cartProducts)? hasProducts,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEmptyState value) empty,
    required TResult Function(_CartHasProducts value) hasProducts,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEmptyState value)? empty,
    TResult? Function(_CartHasProducts value)? hasProducts,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEmptyState value)? empty,
    TResult Function(_CartHasProducts value)? hasProducts,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _CartEmptyState extends CartState {
  const factory _CartEmptyState() = _$CartEmptyStateImpl;
  const _CartEmptyState._() : super._();
}

/// @nodoc
abstract class _$$CartHasProductsImplCopyWith<$Res> {
  factory _$$CartHasProductsImplCopyWith(_$CartHasProductsImpl value,
          $Res Function(_$CartHasProductsImpl) then) =
      __$$CartHasProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartProductEntity> cartProducts});
}

/// @nodoc
class __$$CartHasProductsImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartHasProductsImpl>
    implements _$$CartHasProductsImplCopyWith<$Res> {
  __$$CartHasProductsImplCopyWithImpl(
      _$CartHasProductsImpl _value, $Res Function(_$CartHasProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
  }) {
    return _then(_$CartHasProductsImpl(
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductEntity>,
    ));
  }
}

/// @nodoc

class _$CartHasProductsImpl extends _CartHasProducts {
  const _$CartHasProductsImpl(
      {required final List<CartProductEntity> cartProducts})
      : _cartProducts = cartProducts,
        super._();

  final List<CartProductEntity> _cartProducts;
  @override
  List<CartProductEntity> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'CartState.hasProducts(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartHasProductsImpl &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartProducts));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartHasProductsImplCopyWith<_$CartHasProductsImpl> get copyWith =>
      __$$CartHasProductsImplCopyWithImpl<_$CartHasProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(List<CartProductEntity> cartProducts) hasProducts,
  }) {
    return hasProducts(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(List<CartProductEntity> cartProducts)? hasProducts,
  }) {
    return hasProducts?.call(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(List<CartProductEntity> cartProducts)? hasProducts,
    required TResult orElse(),
  }) {
    if (hasProducts != null) {
      return hasProducts(cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartEmptyState value) empty,
    required TResult Function(_CartHasProducts value) hasProducts,
  }) {
    return hasProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartEmptyState value)? empty,
    TResult? Function(_CartHasProducts value)? hasProducts,
  }) {
    return hasProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartEmptyState value)? empty,
    TResult Function(_CartHasProducts value)? hasProducts,
    required TResult orElse(),
  }) {
    if (hasProducts != null) {
      return hasProducts(this);
    }
    return orElse();
  }
}

abstract class _CartHasProducts extends CartState {
  const factory _CartHasProducts(
          {required final List<CartProductEntity> cartProducts}) =
      _$CartHasProductsImpl;
  const _CartHasProducts._() : super._();

  List<CartProductEntity> get cartProducts;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartHasProductsImplCopyWith<_$CartHasProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
