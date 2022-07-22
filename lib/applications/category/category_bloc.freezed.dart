// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class _$GetCategoryListCopyWith<$Res> {
  factory _$GetCategoryListCopyWith(
          _GetCategoryList value, $Res Function(_GetCategoryList) then) =
      __$GetCategoryListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCategoryListCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$GetCategoryListCopyWith<$Res> {
  __$GetCategoryListCopyWithImpl(
      _GetCategoryList _value, $Res Function(_GetCategoryList) _then)
      : super(_value, (v) => _then(v as _GetCategoryList));

  @override
  _GetCategoryList get _value => super._value as _GetCategoryList;
}

/// @nodoc

class _$_GetCategoryList implements _GetCategoryList {
  const _$_GetCategoryList();

  @override
  String toString() {
    return 'CategoryEvent.getCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCategoryList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategoryList,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCategoryList,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategoryList,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategoryList value) getCategoryList,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategoryList value)? getCategoryList,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryList implements CategoryEvent {
  const factory _GetCategoryList() = _$_GetCategoryList;
}

/// @nodoc
mixin _$CategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Category> get categoryList => throw _privateConstructorUsedError;
  Option<Either<String, List<Category>>> get categoryFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Category> categoryList,
      Option<Either<String, List<Category>>> categoryFailureOrSuccessOption});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? categoryList = freezed,
    Object? categoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categoryFailureOrSuccessOption: categoryFailureOrSuccessOption == freezed
          ? _value.categoryFailureOrSuccessOption
          : categoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Category>>>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryListCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryListCopyWith(
          _CategoryList value, $Res Function(_CategoryList) then) =
      __$CategoryListCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Category> categoryList,
      Option<Either<String, List<Category>>> categoryFailureOrSuccessOption});
}

/// @nodoc
class __$CategoryListCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryListCopyWith<$Res> {
  __$CategoryListCopyWithImpl(
      _CategoryList _value, $Res Function(_CategoryList) _then)
      : super(_value, (v) => _then(v as _CategoryList));

  @override
  _CategoryList get _value => super._value as _CategoryList;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? categoryList = freezed,
    Object? categoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_CategoryList(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categoryFailureOrSuccessOption: categoryFailureOrSuccessOption == freezed
          ? _value.categoryFailureOrSuccessOption
          : categoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<Category>>>,
    ));
  }
}

/// @nodoc

class _$_CategoryList implements _CategoryList {
  const _$_CategoryList(
      {required this.isLoading,
      required final List<Category> categoryList,
      required this.categoryFailureOrSuccessOption})
      : _categoryList = categoryList;

  @override
  final bool isLoading;
  final List<Category> _categoryList;
  @override
  List<Category> get categoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  final Option<Either<String, List<Category>>> categoryFailureOrSuccessOption;

  @override
  String toString() {
    return 'CategoryState(isLoading: $isLoading, categoryList: $categoryList, categoryFailureOrSuccessOption: $categoryFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryList &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.categoryList, categoryList) &&
            const DeepCollectionEquality().equals(
                other.categoryFailureOrSuccessOption,
                categoryFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(categoryList),
      const DeepCollectionEquality().hash(categoryFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$CategoryListCopyWith<_CategoryList> get copyWith =>
      __$CategoryListCopyWithImpl<_CategoryList>(this, _$identity);
}

abstract class _CategoryList implements CategoryState {
  const factory _CategoryList(
      {required final bool isLoading,
      required final List<Category> categoryList,
      required final Option<Either<String, List<Category>>>
          categoryFailureOrSuccessOption}) = _$_CategoryList;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Category> get categoryList => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<Category>>> get categoryFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryListCopyWith<_CategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}
