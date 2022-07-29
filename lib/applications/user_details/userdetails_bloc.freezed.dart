// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'userdetails_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserdetailsEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserdetailsEventCopyWith<UserdetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserdetailsEventCopyWith<$Res> {
  factory $UserdetailsEventCopyWith(
          UserdetailsEvent value, $Res Function(UserdetailsEvent) then) =
      _$UserdetailsEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UserdetailsEventCopyWithImpl<$Res>
    implements $UserdetailsEventCopyWith<$Res> {
  _$UserdetailsEventCopyWithImpl(this._value, this._then);

  final UserdetailsEvent _value;
  // ignore: unused_field
  final $Res Function(UserdetailsEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetCurrentUserCopyWith<$Res>
    implements $UserdetailsEventCopyWith<$Res> {
  factory _$GetCurrentUserCopyWith(
          _GetCurrentUser value, $Res Function(_GetCurrentUser) then) =
      __$GetCurrentUserCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$GetCurrentUserCopyWithImpl<$Res>
    extends _$UserdetailsEventCopyWithImpl<$Res>
    implements _$GetCurrentUserCopyWith<$Res> {
  __$GetCurrentUserCopyWithImpl(
      _GetCurrentUser _value, $Res Function(_GetCurrentUser) _then)
      : super(_value, (v) => _then(v as _GetCurrentUser));

  @override
  _GetCurrentUser get _value => super._value as _GetCurrentUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetCurrentUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCurrentUser implements _GetCurrentUser {
  const _$_GetCurrentUser({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'UserdetailsEvent.getCurrentUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCurrentUser &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$GetCurrentUserCopyWith<_GetCurrentUser> get copyWith =>
      __$GetCurrentUserCopyWithImpl<_GetCurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCurrentUser,
  }) {
    return getCurrentUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getCurrentUser,
  }) {
    return getCurrentUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentUser value) getCurrentUser,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements UserdetailsEvent {
  const factory _GetCurrentUser({required final String id}) = _$_GetCurrentUser;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCurrentUserCopyWith<_GetCurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserdetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel get model => throw _privateConstructorUsedError;
  Option<Either<String, UserModel>> get modelDataFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserdetailsStateCopyWith<UserdetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserdetailsStateCopyWith<$Res> {
  factory $UserdetailsStateCopyWith(
          UserdetailsState value, $Res Function(UserdetailsState) then) =
      _$UserdetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      UserModel model,
      Option<Either<String, UserModel>> modelDataFailureOrSuccess});
}

/// @nodoc
class _$UserdetailsStateCopyWithImpl<$Res>
    implements $UserdetailsStateCopyWith<$Res> {
  _$UserdetailsStateCopyWithImpl(this._value, this._then);

  final UserdetailsState _value;
  // ignore: unused_field
  final $Res Function(UserdetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? model = freezed,
    Object? modelDataFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
      modelDataFailureOrSuccess: modelDataFailureOrSuccess == freezed
          ? _value.modelDataFailureOrSuccess
          : modelDataFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, UserModel>>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $UserdetailsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      UserModel model,
      Option<Either<String, UserModel>> modelDataFailureOrSuccess});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserdetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? model = freezed,
    Object? modelDataFailureOrSuccess = freezed,
  }) {
    return _then(_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UserModel,
      modelDataFailureOrSuccess: modelDataFailureOrSuccess == freezed
          ? _value.modelDataFailureOrSuccess
          : modelDataFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, UserModel>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.model,
      required this.modelDataFailureOrSuccess});

  @override
  final bool isLoading;
  @override
  final UserModel model;
  @override
  final Option<Either<String, UserModel>> modelDataFailureOrSuccess;

  @override
  String toString() {
    return 'UserdetailsState(isLoading: $isLoading, model: $model, modelDataFailureOrSuccess: $modelDataFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(
                other.modelDataFailureOrSuccess, modelDataFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(modelDataFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements UserdetailsState {
  const factory _Initial(
      {required final bool isLoading,
      required final UserModel model,
      required final Option<Either<String, UserModel>>
          modelDataFailureOrSuccess}) = _$_Initial;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  UserModel get model => throw _privateConstructorUsedError;
  @override
  Option<Either<String, UserModel>> get modelDataFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
