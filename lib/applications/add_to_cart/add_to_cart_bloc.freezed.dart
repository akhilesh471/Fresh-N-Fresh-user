// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddToCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart model, String id) add,
    required TResult Function() viewCart,
    required TResult Function(Cart model) incrementQuantity,
    required TResult Function(Cart model, num qty) decrementQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) add,
    required TResult Function(_ViewCart value) viewCart,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(
          AddToCartEvent value, $Res Function(AddToCartEvent) then) =
      _$AddToCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(this._value, this._then);

  final AddToCartEvent _value;
  // ignore: unused_field
  final $Res Function(AddToCartEvent) _then;
}

/// @nodoc
abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call({Cart model, String id});
}

/// @nodoc
class __$AddToCartCopyWithImpl<$Res> extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object? model = freezed,
    Object? id = freezed,
  }) {
    return _then(_AddToCart(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Cart,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.model, required this.id});

  @override
  final Cart model;
  @override
  final String id;

  @override
  String toString() {
    return 'AddToCartEvent.add(model: $model, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToCart &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart model, String id) add,
    required TResult Function() viewCart,
    required TResult Function(Cart model) incrementQuantity,
    required TResult Function(Cart model, num qty) decrementQuantity,
  }) {
    return add(model, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
  }) {
    return add?.call(model, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(model, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) add,
    required TResult Function(_ViewCart value) viewCart,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements AddToCartEvent {
  const factory _AddToCart(
      {required final Cart model, required final String id}) = _$_AddToCart;

  Cart get model => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewCartCopyWith<$Res> {
  factory _$ViewCartCopyWith(_ViewCart value, $Res Function(_ViewCart) then) =
      __$ViewCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewCartCopyWithImpl<$Res> extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$ViewCartCopyWith<$Res> {
  __$ViewCartCopyWithImpl(_ViewCart _value, $Res Function(_ViewCart) _then)
      : super(_value, (v) => _then(v as _ViewCart));

  @override
  _ViewCart get _value => super._value as _ViewCart;
}

/// @nodoc

class _$_ViewCart implements _ViewCart {
  const _$_ViewCart();

  @override
  String toString() {
    return 'AddToCartEvent.viewCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ViewCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart model, String id) add,
    required TResult Function() viewCart,
    required TResult Function(Cart model) incrementQuantity,
    required TResult Function(Cart model, num qty) decrementQuantity,
  }) {
    return viewCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
  }) {
    return viewCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (viewCart != null) {
      return viewCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) add,
    required TResult Function(_ViewCart value) viewCart,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
  }) {
    return viewCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
  }) {
    return viewCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (viewCart != null) {
      return viewCart(this);
    }
    return orElse();
  }
}

abstract class _ViewCart implements AddToCartEvent {
  const factory _ViewCart() = _$_ViewCart;
}

/// @nodoc
abstract class _$IncrementQuantityCopyWith<$Res> {
  factory _$IncrementQuantityCopyWith(
          _IncrementQuantity value, $Res Function(_IncrementQuantity) then) =
      __$IncrementQuantityCopyWithImpl<$Res>;
  $Res call({Cart model});
}

/// @nodoc
class __$IncrementQuantityCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$IncrementQuantityCopyWith<$Res> {
  __$IncrementQuantityCopyWithImpl(
      _IncrementQuantity _value, $Res Function(_IncrementQuantity) _then)
      : super(_value, (v) => _then(v as _IncrementQuantity));

  @override
  _IncrementQuantity get _value => super._value as _IncrementQuantity;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_IncrementQuantity(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc

class _$_IncrementQuantity implements _IncrementQuantity {
  const _$_IncrementQuantity({required this.model});

  @override
  final Cart model;

  @override
  String toString() {
    return 'AddToCartEvent.incrementQuantity(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncrementQuantity &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$IncrementQuantityCopyWith<_IncrementQuantity> get copyWith =>
      __$IncrementQuantityCopyWithImpl<_IncrementQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart model, String id) add,
    required TResult Function() viewCart,
    required TResult Function(Cart model) incrementQuantity,
    required TResult Function(Cart model, num qty) decrementQuantity,
  }) {
    return incrementQuantity(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
  }) {
    return incrementQuantity?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) add,
    required TResult Function(_ViewCart value) viewCart,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
  }) {
    return incrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
  }) {
    return incrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (incrementQuantity != null) {
      return incrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncrementQuantity implements AddToCartEvent {
  const factory _IncrementQuantity({required final Cart model}) =
      _$_IncrementQuantity;

  Cart get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncrementQuantityCopyWith<_IncrementQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecrementQuantityCopyWith<$Res> {
  factory _$DecrementQuantityCopyWith(
          _DecrementQuantity value, $Res Function(_DecrementQuantity) then) =
      __$DecrementQuantityCopyWithImpl<$Res>;
  $Res call({Cart model, num qty});
}

/// @nodoc
class __$DecrementQuantityCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$DecrementQuantityCopyWith<$Res> {
  __$DecrementQuantityCopyWithImpl(
      _DecrementQuantity _value, $Res Function(_DecrementQuantity) _then)
      : super(_value, (v) => _then(v as _DecrementQuantity));

  @override
  _DecrementQuantity get _value => super._value as _DecrementQuantity;

  @override
  $Res call({
    Object? model = freezed,
    Object? qty = freezed,
  }) {
    return _then(_DecrementQuantity(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Cart,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_DecrementQuantity implements _DecrementQuantity {
  const _$_DecrementQuantity({required this.model, required this.qty});

  @override
  final Cart model;
  @override
  final num qty;

  @override
  String toString() {
    return 'AddToCartEvent.decrementQuantity(model: $model, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecrementQuantity &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.qty, qty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(qty));

  @JsonKey(ignore: true)
  @override
  _$DecrementQuantityCopyWith<_DecrementQuantity> get copyWith =>
      __$DecrementQuantityCopyWithImpl<_DecrementQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Cart model, String id) add,
    required TResult Function() viewCart,
    required TResult Function(Cart model) incrementQuantity,
    required TResult Function(Cart model, num qty) decrementQuantity,
  }) {
    return decrementQuantity(model, qty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
  }) {
    return decrementQuantity?.call(model, qty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Cart model, String id)? add,
    TResult Function()? viewCart,
    TResult Function(Cart model)? incrementQuantity,
    TResult Function(Cart model, num qty)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity(model, qty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) add,
    required TResult Function(_ViewCart value) viewCart,
    required TResult Function(_IncrementQuantity value) incrementQuantity,
    required TResult Function(_DecrementQuantity value) decrementQuantity,
  }) {
    return decrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
  }) {
    return decrementQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? add,
    TResult Function(_ViewCart value)? viewCart,
    TResult Function(_IncrementQuantity value)? incrementQuantity,
    TResult Function(_DecrementQuantity value)? decrementQuantity,
    required TResult orElse(),
  }) {
    if (decrementQuantity != null) {
      return decrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecrementQuantity implements AddToCartEvent {
  const factory _DecrementQuantity(
      {required final Cart model,
      required final num qty}) = _$_DecrementQuantity;

  Cart get model => throw _privateConstructorUsedError;
  num get qty => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DecrementQuantityCopyWith<_DecrementQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddToCartState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Cart> get cartList => throw _privateConstructorUsedError;
  Option<Either<String, List<Cart>>> get cartFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isqty => throw _privateConstructorUsedError;
  num get qty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToCartStateCopyWith<AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartStateCopyWith<$Res> {
  factory $AddToCartStateCopyWith(
          AddToCartState value, $Res Function(AddToCartState) then) =
      _$AddToCartStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Cart> cartList,
      Option<Either<String, List<Cart>>> cartFailureOrSuccessOption,
      bool isqty,
      num qty});
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  final AddToCartState _value;
  // ignore: unused_field
  final $Res Function(AddToCartState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartList = freezed,
    Object? cartFailureOrSuccessOption = freezed,
    Object? isqty = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartList: cartList == freezed
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      cartFailureOrSuccessOption: cartFailureOrSuccessOption == freezed
          ? _value.cartFailureOrSuccessOption
          : cartFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Cart>>>,
      isqty: isqty == freezed
          ? _value.isqty
          : isqty // ignore: cast_nullable_to_non_nullable
              as bool,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$AddToCartStateCopyWith<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  factory _$AddToCartStateCopyWith(
          _AddToCartState value, $Res Function(_AddToCartState) then) =
      __$AddToCartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Cart> cartList,
      Option<Either<String, List<Cart>>> cartFailureOrSuccessOption,
      bool isqty,
      num qty});
}

/// @nodoc
class __$AddToCartStateCopyWithImpl<$Res>
    extends _$AddToCartStateCopyWithImpl<$Res>
    implements _$AddToCartStateCopyWith<$Res> {
  __$AddToCartStateCopyWithImpl(
      _AddToCartState _value, $Res Function(_AddToCartState) _then)
      : super(_value, (v) => _then(v as _AddToCartState));

  @override
  _AddToCartState get _value => super._value as _AddToCartState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartList = freezed,
    Object? cartFailureOrSuccessOption = freezed,
    Object? isqty = freezed,
    Object? qty = freezed,
  }) {
    return _then(_AddToCartState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartList: cartList == freezed
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      cartFailureOrSuccessOption: cartFailureOrSuccessOption == freezed
          ? _value.cartFailureOrSuccessOption
          : cartFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Cart>>>,
      isqty: isqty == freezed
          ? _value.isqty
          : isqty // ignore: cast_nullable_to_non_nullable
              as bool,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_AddToCartState implements _AddToCartState {
  const _$_AddToCartState(
      {required this.isLoading,
      required final List<Cart> cartList,
      required this.cartFailureOrSuccessOption,
      required this.isqty,
      required this.qty})
      : _cartList = cartList;

  @override
  final bool isLoading;
  final List<Cart> _cartList;
  @override
  List<Cart> get cartList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  final Option<Either<String, List<Cart>>> cartFailureOrSuccessOption;
  @override
  final bool isqty;
  @override
  final num qty;

  @override
  String toString() {
    return 'AddToCartState(isLoading: $isLoading, cartList: $cartList, cartFailureOrSuccessOption: $cartFailureOrSuccessOption, isqty: $isqty, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToCartState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.cartList, cartList) &&
            const DeepCollectionEquality().equals(
                other.cartFailureOrSuccessOption, cartFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isqty, isqty) &&
            const DeepCollectionEquality().equals(other.qty, qty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(cartList),
      const DeepCollectionEquality().hash(cartFailureOrSuccessOption),
      const DeepCollectionEquality().hash(isqty),
      const DeepCollectionEquality().hash(qty));

  @JsonKey(ignore: true)
  @override
  _$AddToCartStateCopyWith<_AddToCartState> get copyWith =>
      __$AddToCartStateCopyWithImpl<_AddToCartState>(this, _$identity);
}

abstract class _AddToCartState implements AddToCartState {
  const factory _AddToCartState(
      {required final bool isLoading,
      required final List<Cart> cartList,
      required final Option<Either<String, List<Cart>>>
          cartFailureOrSuccessOption,
      required final bool isqty,
      required final num qty}) = _$_AddToCartState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Cart> get cartList => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<Cart>>> get cartFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isqty => throw _privateConstructorUsedError;
  @override
  num get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddToCartStateCopyWith<_AddToCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
