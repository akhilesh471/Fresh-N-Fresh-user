// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  String get filterKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filterKey) getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filterKey)? getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filterKey)? getAllProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsEventCopyWith<ProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res>;
  $Res call({String filterKey});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  final ProductsEvent _value;
  // ignore: unused_field
  final $Res Function(ProductsEvent) _then;

  @override
  $Res call({
    Object? filterKey = freezed,
  }) {
    return _then(_value.copyWith(
      filterKey: filterKey == freezed
          ? _value.filterKey
          : filterKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetAllProductsCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$GetAllProductsCopyWith(
          _GetAllProducts value, $Res Function(_GetAllProducts) then) =
      __$GetAllProductsCopyWithImpl<$Res>;
  @override
  $Res call({String filterKey});
}

/// @nodoc
class __$GetAllProductsCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res>
    implements _$GetAllProductsCopyWith<$Res> {
  __$GetAllProductsCopyWithImpl(
      _GetAllProducts _value, $Res Function(_GetAllProducts) _then)
      : super(_value, (v) => _then(v as _GetAllProducts));

  @override
  _GetAllProducts get _value => super._value as _GetAllProducts;

  @override
  $Res call({
    Object? filterKey = freezed,
  }) {
    return _then(_GetAllProducts(
      filterKey: filterKey == freezed
          ? _value.filterKey
          : filterKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllProducts implements _GetAllProducts {
  const _$_GetAllProducts({required this.filterKey});

  @override
  final String filterKey;

  @override
  String toString() {
    return 'ProductsEvent.getAllProducts(filterKey: $filterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllProducts &&
            const DeepCollectionEquality().equals(other.filterKey, filterKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filterKey));

  @JsonKey(ignore: true)
  @override
  _$GetAllProductsCopyWith<_GetAllProducts> get copyWith =>
      __$GetAllProductsCopyWithImpl<_GetAllProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filterKey) getAllProducts,
  }) {
    return getAllProducts(filterKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filterKey)? getAllProducts,
  }) {
    return getAllProducts?.call(filterKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filterKey)? getAllProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(filterKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllProducts value) getAllProducts,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllProducts value)? getAllProducts,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements ProductsEvent {
  const factory _GetAllProducts({required final String filterKey}) =
      _$_GetAllProducts;

  @override
  String get filterKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAllProductsCopyWith<_GetAllProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Products> get productList => throw _privateConstructorUsedError;
  Option<Either<String, List<Products>>> get productsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Products> productList,
      Option<Either<String, List<Products>>> productsFailureOrSuccessOption});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? productList = freezed,
    Object? productsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      productsFailureOrSuccessOption: productsFailureOrSuccessOption == freezed
          ? _value.productsFailureOrSuccessOption
          : productsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Products>>>,
    ));
  }
}

/// @nodoc
abstract class _$ProductListCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$ProductListCopyWith(
          _ProductList value, $Res Function(_ProductList) then) =
      __$ProductListCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Products> productList,
      Option<Either<String, List<Products>>> productsFailureOrSuccessOption});
}

/// @nodoc
class __$ProductListCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res>
    implements _$ProductListCopyWith<$Res> {
  __$ProductListCopyWithImpl(
      _ProductList _value, $Res Function(_ProductList) _then)
      : super(_value, (v) => _then(v as _ProductList));

  @override
  _ProductList get _value => super._value as _ProductList;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? productList = freezed,
    Object? productsFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProductList(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: productList == freezed
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Products>,
      productsFailureOrSuccessOption: productsFailureOrSuccessOption == freezed
          ? _value.productsFailureOrSuccessOption
          : productsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Products>>>,
    ));
  }
}

/// @nodoc

class _$_ProductList implements _ProductList {
  const _$_ProductList(
      {required this.isLoading,
      required final List<Products> productList,
      required this.productsFailureOrSuccessOption})
      : _productList = productList;

  @override
  final bool isLoading;
  final List<Products> _productList;
  @override
  List<Products> get productList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final Option<Either<String, List<Products>>> productsFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductsState(isLoading: $isLoading, productList: $productList, productsFailureOrSuccessOption: $productsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductList &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.productList, productList) &&
            const DeepCollectionEquality().equals(
                other.productsFailureOrSuccessOption,
                productsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(productList),
      const DeepCollectionEquality().hash(productsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$ProductListCopyWith<_ProductList> get copyWith =>
      __$ProductListCopyWithImpl<_ProductList>(this, _$identity);
}

abstract class _ProductList implements ProductsState {
  const factory _ProductList(
      {required final bool isLoading,
      required final List<Products> productList,
      required final Option<Either<String, List<Products>>>
          productsFailureOrSuccessOption}) = _$_ProductList;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Products> get productList => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<Products>>> get productsFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductListCopyWith<_ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}
