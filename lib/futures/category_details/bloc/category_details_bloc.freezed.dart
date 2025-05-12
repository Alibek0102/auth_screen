// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryDetailsEvent {
  String get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String model) loadProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String model)? loadProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String model)? loadProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategoryProducts value) loadProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategoryProducts value)? loadProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategoryProducts value)? loadProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDetailsEventCopyWith<CategoryDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsEventCopyWith<$Res> {
  factory $CategoryDetailsEventCopyWith(CategoryDetailsEvent value,
          $Res Function(CategoryDetailsEvent) then) =
      _$CategoryDetailsEventCopyWithImpl<$Res, CategoryDetailsEvent>;
  @useResult
  $Res call({String model});
}

/// @nodoc
class _$CategoryDetailsEventCopyWithImpl<$Res,
        $Val extends CategoryDetailsEvent>
    implements $CategoryDetailsEventCopyWith<$Res> {
  _$CategoryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCategoryProductsImplCopyWith<$Res>
    implements $CategoryDetailsEventCopyWith<$Res> {
  factory _$$LoadCategoryProductsImplCopyWith(_$LoadCategoryProductsImpl value,
          $Res Function(_$LoadCategoryProductsImpl) then) =
      __$$LoadCategoryProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model});
}

/// @nodoc
class __$$LoadCategoryProductsImplCopyWithImpl<$Res>
    extends _$CategoryDetailsEventCopyWithImpl<$Res, _$LoadCategoryProductsImpl>
    implements _$$LoadCategoryProductsImplCopyWith<$Res> {
  __$$LoadCategoryProductsImplCopyWithImpl(_$LoadCategoryProductsImpl _value,
      $Res Function(_$LoadCategoryProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$LoadCategoryProductsImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCategoryProductsImpl
    with DiagnosticableTreeMixin
    implements LoadCategoryProducts {
  const _$LoadCategoryProductsImpl({required this.model});

  @override
  final String model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailsEvent.loadProducts(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryDetailsEvent.loadProducts'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCategoryProductsImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CategoryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCategoryProductsImplCopyWith<_$LoadCategoryProductsImpl>
      get copyWith =>
          __$$LoadCategoryProductsImplCopyWithImpl<_$LoadCategoryProductsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String model) loadProducts,
  }) {
    return loadProducts(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String model)? loadProducts,
  }) {
    return loadProducts?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String model)? loadProducts,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategoryProducts value) loadProducts,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategoryProducts value)? loadProducts,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategoryProducts value)? loadProducts,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class LoadCategoryProducts implements CategoryDetailsEvent {
  const factory LoadCategoryProducts({required final String model}) =
      _$LoadCategoryProductsImpl;

  @override
  String get model;

  /// Create a copy of CategoryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCategoryProductsImplCopyWith<_$LoadCategoryProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<ProductEntity> products) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<ProductEntity> products)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<ProductEntity> products)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryDetailsInitialState value) initial,
    required TResult Function(_CategoryDetailsLoader value) loader,
    required TResult Function(_CategoryDetailsLoaded value) loaded,
    required TResult Function(_CategoryDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryDetailsInitialState value)? initial,
    TResult? Function(_CategoryDetailsLoader value)? loader,
    TResult? Function(_CategoryDetailsLoaded value)? loaded,
    TResult? Function(_CategoryDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailsInitialState value)? initial,
    TResult Function(_CategoryDetailsLoader value)? loader,
    TResult Function(_CategoryDetailsLoaded value)? loaded,
    TResult Function(_CategoryDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsStateCopyWith<$Res> {
  factory $CategoryDetailsStateCopyWith(CategoryDetailsState value,
          $Res Function(CategoryDetailsState) then) =
      _$CategoryDetailsStateCopyWithImpl<$Res, CategoryDetailsState>;
}

/// @nodoc
class _$CategoryDetailsStateCopyWithImpl<$Res,
        $Val extends CategoryDetailsState>
    implements $CategoryDetailsStateCopyWith<$Res> {
  _$CategoryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryDetailsInitialStateImplCopyWith<$Res> {
  factory _$$CategoryDetailsInitialStateImplCopyWith(
          _$CategoryDetailsInitialStateImpl value,
          $Res Function(_$CategoryDetailsInitialStateImpl) then) =
      __$$CategoryDetailsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryDetailsInitialStateImplCopyWithImpl<$Res>
    extends _$CategoryDetailsStateCopyWithImpl<$Res,
        _$CategoryDetailsInitialStateImpl>
    implements _$$CategoryDetailsInitialStateImplCopyWith<$Res> {
  __$$CategoryDetailsInitialStateImplCopyWithImpl(
      _$CategoryDetailsInitialStateImpl _value,
      $Res Function(_$CategoryDetailsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryDetailsInitialStateImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetailsInitialState {
  const _$CategoryDetailsInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryDetailsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<ProductEntity> products) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<ProductEntity> products)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<ProductEntity> products)? loaded,
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
    required TResult Function(_CategoryDetailsInitialState value) initial,
    required TResult Function(_CategoryDetailsLoader value) loader,
    required TResult Function(_CategoryDetailsLoaded value) loaded,
    required TResult Function(_CategoryDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryDetailsInitialState value)? initial,
    TResult? Function(_CategoryDetailsLoader value)? loader,
    TResult? Function(_CategoryDetailsLoaded value)? loaded,
    TResult? Function(_CategoryDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailsInitialState value)? initial,
    TResult Function(_CategoryDetailsLoader value)? loader,
    TResult Function(_CategoryDetailsLoaded value)? loaded,
    TResult Function(_CategoryDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailsInitialState implements CategoryDetailsState {
  const factory _CategoryDetailsInitialState() =
      _$CategoryDetailsInitialStateImpl;
}

/// @nodoc
abstract class _$$CategoryDetailsLoaderImplCopyWith<$Res> {
  factory _$$CategoryDetailsLoaderImplCopyWith(
          _$CategoryDetailsLoaderImpl value,
          $Res Function(_$CategoryDetailsLoaderImpl) then) =
      __$$CategoryDetailsLoaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryDetailsLoaderImplCopyWithImpl<$Res>
    extends _$CategoryDetailsStateCopyWithImpl<$Res,
        _$CategoryDetailsLoaderImpl>
    implements _$$CategoryDetailsLoaderImplCopyWith<$Res> {
  __$$CategoryDetailsLoaderImplCopyWithImpl(_$CategoryDetailsLoaderImpl _value,
      $Res Function(_$CategoryDetailsLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryDetailsLoaderImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetailsLoader {
  const _$CategoryDetailsLoaderImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailsState.loader()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryDetailsState.loader'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsLoaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<ProductEntity> products) loaded,
    required TResult Function() error,
  }) {
    return loader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<ProductEntity> products)? loaded,
    TResult? Function()? error,
  }) {
    return loader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<ProductEntity> products)? loaded,
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
    required TResult Function(_CategoryDetailsInitialState value) initial,
    required TResult Function(_CategoryDetailsLoader value) loader,
    required TResult Function(_CategoryDetailsLoaded value) loaded,
    required TResult Function(_CategoryDetailsError value) error,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryDetailsInitialState value)? initial,
    TResult? Function(_CategoryDetailsLoader value)? loader,
    TResult? Function(_CategoryDetailsLoaded value)? loaded,
    TResult? Function(_CategoryDetailsError value)? error,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailsInitialState value)? initial,
    TResult Function(_CategoryDetailsLoader value)? loader,
    TResult Function(_CategoryDetailsLoaded value)? loaded,
    TResult Function(_CategoryDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailsLoader implements CategoryDetailsState {
  const factory _CategoryDetailsLoader() = _$CategoryDetailsLoaderImpl;
}

/// @nodoc
abstract class _$$CategoryDetailsLoadedImplCopyWith<$Res> {
  factory _$$CategoryDetailsLoadedImplCopyWith(
          _$CategoryDetailsLoadedImpl value,
          $Res Function(_$CategoryDetailsLoadedImpl) then) =
      __$$CategoryDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$CategoryDetailsLoadedImplCopyWithImpl<$Res>
    extends _$CategoryDetailsStateCopyWithImpl<$Res,
        _$CategoryDetailsLoadedImpl>
    implements _$$CategoryDetailsLoadedImplCopyWith<$Res> {
  __$$CategoryDetailsLoadedImplCopyWithImpl(_$CategoryDetailsLoadedImpl _value,
      $Res Function(_$CategoryDetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CategoryDetailsLoadedImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$CategoryDetailsLoadedImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetailsLoaded {
  const _$CategoryDetailsLoadedImpl(
      {required final List<ProductEntity> products})
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailsState.loaded(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryDetailsState.loaded'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsLoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailsLoadedImplCopyWith<_$CategoryDetailsLoadedImpl>
      get copyWith => __$$CategoryDetailsLoadedImplCopyWithImpl<
          _$CategoryDetailsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<ProductEntity> products) loaded,
    required TResult Function() error,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<ProductEntity> products)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<ProductEntity> products)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoryDetailsInitialState value) initial,
    required TResult Function(_CategoryDetailsLoader value) loader,
    required TResult Function(_CategoryDetailsLoaded value) loaded,
    required TResult Function(_CategoryDetailsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryDetailsInitialState value)? initial,
    TResult? Function(_CategoryDetailsLoader value)? loader,
    TResult? Function(_CategoryDetailsLoaded value)? loaded,
    TResult? Function(_CategoryDetailsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailsInitialState value)? initial,
    TResult Function(_CategoryDetailsLoader value)? loader,
    TResult Function(_CategoryDetailsLoaded value)? loaded,
    TResult Function(_CategoryDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailsLoaded implements CategoryDetailsState {
  const factory _CategoryDetailsLoaded(
          {required final List<ProductEntity> products}) =
      _$CategoryDetailsLoadedImpl;

  List<ProductEntity> get products;

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDetailsLoadedImplCopyWith<_$CategoryDetailsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDetailsErrorImplCopyWith<$Res> {
  factory _$$CategoryDetailsErrorImplCopyWith(_$CategoryDetailsErrorImpl value,
          $Res Function(_$CategoryDetailsErrorImpl) then) =
      __$$CategoryDetailsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryDetailsErrorImplCopyWithImpl<$Res>
    extends _$CategoryDetailsStateCopyWithImpl<$Res, _$CategoryDetailsErrorImpl>
    implements _$$CategoryDetailsErrorImplCopyWith<$Res> {
  __$$CategoryDetailsErrorImplCopyWithImpl(_$CategoryDetailsErrorImpl _value,
      $Res Function(_$CategoryDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryDetailsErrorImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetailsError {
  const _$CategoryDetailsErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryDetailsState.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<ProductEntity> products) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<ProductEntity> products)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<ProductEntity> products)? loaded,
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
    required TResult Function(_CategoryDetailsInitialState value) initial,
    required TResult Function(_CategoryDetailsLoader value) loader,
    required TResult Function(_CategoryDetailsLoaded value) loaded,
    required TResult Function(_CategoryDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoryDetailsInitialState value)? initial,
    TResult? Function(_CategoryDetailsLoader value)? loader,
    TResult? Function(_CategoryDetailsLoaded value)? loaded,
    TResult? Function(_CategoryDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoryDetailsInitialState value)? initial,
    TResult Function(_CategoryDetailsLoader value)? loader,
    TResult Function(_CategoryDetailsLoaded value)? loaded,
    TResult Function(_CategoryDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CategoryDetailsError implements CategoryDetailsState {
  const factory _CategoryDetailsError() = _$CategoryDetailsErrorImpl;
}
