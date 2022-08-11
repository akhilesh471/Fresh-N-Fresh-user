// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wish_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishList model) add,
    required TResult Function() getData,
    required TResult Function(String id) remove,
    required TResult Function() removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToWishList value) add,
    required TResult Function(_GetData value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveData value) removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListEventCopyWith<$Res> {
  factory $WishListEventCopyWith(
          WishListEvent value, $Res Function(WishListEvent) then) =
      _$WishListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WishListEventCopyWithImpl<$Res>
    implements $WishListEventCopyWith<$Res> {
  _$WishListEventCopyWithImpl(this._value, this._then);

  final WishListEvent _value;
  // ignore: unused_field
  final $Res Function(WishListEvent) _then;
}

/// @nodoc
abstract class _$AddToWishListCopyWith<$Res> {
  factory _$AddToWishListCopyWith(
          _AddToWishList value, $Res Function(_AddToWishList) then) =
      __$AddToWishListCopyWithImpl<$Res>;
  $Res call({WishList model});
}

/// @nodoc
class __$AddToWishListCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res>
    implements _$AddToWishListCopyWith<$Res> {
  __$AddToWishListCopyWithImpl(
      _AddToWishList _value, $Res Function(_AddToWishList) _then)
      : super(_value, (v) => _then(v as _AddToWishList));

  @override
  _AddToWishList get _value => super._value as _AddToWishList;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_AddToWishList(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WishList,
    ));
  }
}

/// @nodoc

class _$_AddToWishList implements _AddToWishList {
  const _$_AddToWishList({required this.model});

  @override
  final WishList model;

  @override
  String toString() {
    return 'WishListEvent.add(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToWishList &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$AddToWishListCopyWith<_AddToWishList> get copyWith =>
      __$AddToWishListCopyWithImpl<_AddToWishList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishList model) add,
    required TResult Function() getData,
    required TResult Function(String id) remove,
    required TResult Function() removeData,
  }) {
    return add(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
  }) {
    return add?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToWishList value) add,
    required TResult Function(_GetData value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveData value) removeData,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddToWishList implements WishListEvent {
  const factory _AddToWishList({required final WishList model}) =
      _$_AddToWishList;

  WishList get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddToWishListCopyWith<_AddToWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDataCopyWith<$Res> {
  factory _$GetDataCopyWith(_GetData value, $Res Function(_GetData) then) =
      __$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDataCopyWithImpl<$Res> extends _$WishListEventCopyWithImpl<$Res>
    implements _$GetDataCopyWith<$Res> {
  __$GetDataCopyWithImpl(_GetData _value, $Res Function(_GetData) _then)
      : super(_value, (v) => _then(v as _GetData));

  @override
  _GetData get _value => super._value as _GetData;
}

/// @nodoc

class _$_GetData implements _GetData {
  const _$_GetData();

  @override
  String toString() {
    return 'WishListEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishList model) add,
    required TResult Function() getData,
    required TResult Function(String id) remove,
    required TResult Function() removeData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToWishList value) add,
    required TResult Function(_GetData value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveData value) removeData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements WishListEvent {
  const factory _GetData() = _$_GetData;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$WishListEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Remove(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WishListEvent.remove(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Remove &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishList model) add,
    required TResult Function() getData,
    required TResult Function(String id) remove,
    required TResult Function() removeData,
  }) {
    return remove(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
  }) {
    return remove?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToWishList value) add,
    required TResult Function(_GetData value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveData value) removeData,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements WishListEvent {
  const factory _Remove({required final String id}) = _$_Remove;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveCopyWith<_Remove> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveDataCopyWith<$Res> {
  factory _$RemoveDataCopyWith(
          _RemoveData value, $Res Function(_RemoveData) then) =
      __$RemoveDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveDataCopyWithImpl<$Res> extends _$WishListEventCopyWithImpl<$Res>
    implements _$RemoveDataCopyWith<$Res> {
  __$RemoveDataCopyWithImpl(
      _RemoveData _value, $Res Function(_RemoveData) _then)
      : super(_value, (v) => _then(v as _RemoveData));

  @override
  _RemoveData get _value => super._value as _RemoveData;
}

/// @nodoc

class _$_RemoveData implements _RemoveData {
  const _$_RemoveData();

  @override
  String toString() {
    return 'WishListEvent.removeData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishList model) add,
    required TResult Function() getData,
    required TResult Function(String id) remove,
    required TResult Function() removeData,
  }) {
    return removeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
  }) {
    return removeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishList model)? add,
    TResult Function()? getData,
    TResult Function(String id)? remove,
    TResult Function()? removeData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToWishList value) add,
    required TResult Function(_GetData value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_RemoveData value) removeData,
  }) {
    return removeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
  }) {
    return removeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToWishList value)? add,
    TResult Function(_GetData value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData(this);
    }
    return orElse();
  }
}

abstract class _RemoveData implements WishListEvent {
  const factory _RemoveData() = _$_RemoveData;
}

/// @nodoc
mixin _$WishListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<WishList> get favorite => throw _privateConstructorUsedError;
  Option<Either<String, List<WishList>>> get wishListFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishListStateCopyWith<WishListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<WishList> favorite,
      Option<Either<String, List<WishList>>> wishListFailureOrSuccessOption});
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

  final WishListState _value;
  // ignore: unused_field
  final $Res Function(WishListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favorite = freezed,
    Object? wishListFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<WishList>,
      wishListFailureOrSuccessOption: wishListFailureOrSuccessOption == freezed
          ? _value.wishListFailureOrSuccessOption
          : wishListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<WishList>>>,
    ));
  }
}

/// @nodoc
abstract class _$WishListStateCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
  factory _$WishListStateCopyWith(
          _WishListState value, $Res Function(_WishListState) then) =
      __$WishListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<WishList> favorite,
      Option<Either<String, List<WishList>>> wishListFailureOrSuccessOption});
}

/// @nodoc
class __$WishListStateCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res>
    implements _$WishListStateCopyWith<$Res> {
  __$WishListStateCopyWithImpl(
      _WishListState _value, $Res Function(_WishListState) _then)
      : super(_value, (v) => _then(v as _WishListState));

  @override
  _WishListState get _value => super._value as _WishListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favorite = freezed,
    Object? wishListFailureOrSuccessOption = freezed,
  }) {
    return _then(_WishListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<WishList>,
      wishListFailureOrSuccessOption: wishListFailureOrSuccessOption == freezed
          ? _value.wishListFailureOrSuccessOption
          : wishListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<WishList>>>,
    ));
  }
}

/// @nodoc

class _$_WishListState implements _WishListState {
  const _$_WishListState(
      {required this.isLoading,
      required final List<WishList> favorite,
      required this.wishListFailureOrSuccessOption})
      : _favorite = favorite;

  @override
  final bool isLoading;
  final List<WishList> _favorite;
  @override
  List<WishList> get favorite {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorite);
  }

  @override
  final Option<Either<String, List<WishList>>> wishListFailureOrSuccessOption;

  @override
  String toString() {
    return 'WishListState(isLoading: $isLoading, favorite: $favorite, wishListFailureOrSuccessOption: $wishListFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WishListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.favorite, favorite) &&
            const DeepCollectionEquality().equals(
                other.wishListFailureOrSuccessOption,
                wishListFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(favorite),
      const DeepCollectionEquality().hash(wishListFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$WishListStateCopyWith<_WishListState> get copyWith =>
      __$WishListStateCopyWithImpl<_WishListState>(this, _$identity);
}

abstract class _WishListState implements WishListState {
  const factory _WishListState(
      {required final bool isLoading,
      required final List<WishList> favorite,
      required final Option<Either<String, List<WishList>>>
          wishListFailureOrSuccessOption}) = _$_WishListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<WishList> get favorite => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<WishList>>> get wishListFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WishListStateCopyWith<_WishListState> get copyWith =>
      throw _privateConstructorUsedError;
}
