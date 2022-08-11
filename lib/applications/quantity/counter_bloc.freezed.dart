// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() setIntial,
    required TResult Function(int count) reasignValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_SetIntial value) setIntial,
    required TResult Function(_ReasignValue value) reasignValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  final CounterEvent _value;
  // ignore: unused_field
  final $Res Function(CounterEvent) _then;
}

/// @nodoc
abstract class _$IncrementCopyWith<$Res> {
  factory _$IncrementCopyWith(
          _Increment value, $Res Function(_Increment) then) =
      __$IncrementCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncrementCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$IncrementCopyWith<$Res> {
  __$IncrementCopyWithImpl(_Increment _value, $Res Function(_Increment) _then)
      : super(_value, (v) => _then(v as _Increment));

  @override
  _Increment get _value => super._value as _Increment;
}

/// @nodoc

class _$_Increment implements _Increment {
  const _$_Increment();

  @override
  String toString() {
    return 'CounterEvent.increment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Increment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() setIntial,
    required TResult Function(int count) reasignValue,
  }) {
    return increment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
  }) {
    return increment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_SetIntial value) setIntial,
    required TResult Function(_ReasignValue value) reasignValue,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class _Increment implements CounterEvent {
  const factory _Increment() = _$_Increment;
}

/// @nodoc
abstract class _$DecrementCopyWith<$Res> {
  factory _$DecrementCopyWith(
          _Decrement value, $Res Function(_Decrement) then) =
      __$DecrementCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$DecrementCopyWith<$Res> {
  __$DecrementCopyWithImpl(_Decrement _value, $Res Function(_Decrement) _then)
      : super(_value, (v) => _then(v as _Decrement));

  @override
  _Decrement get _value => super._value as _Decrement;
}

/// @nodoc

class _$_Decrement implements _Decrement {
  const _$_Decrement();

  @override
  String toString() {
    return 'CounterEvent.decrement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Decrement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() setIntial,
    required TResult Function(int count) reasignValue,
  }) {
    return decrement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
  }) {
    return decrement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_SetIntial value) setIntial,
    required TResult Function(_ReasignValue value) reasignValue,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class _Decrement implements CounterEvent {
  const factory _Decrement() = _$_Decrement;
}

/// @nodoc
abstract class _$SetIntialCopyWith<$Res> {
  factory _$SetIntialCopyWith(
          _SetIntial value, $Res Function(_SetIntial) then) =
      __$SetIntialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetIntialCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$SetIntialCopyWith<$Res> {
  __$SetIntialCopyWithImpl(_SetIntial _value, $Res Function(_SetIntial) _then)
      : super(_value, (v) => _then(v as _SetIntial));

  @override
  _SetIntial get _value => super._value as _SetIntial;
}

/// @nodoc

class _$_SetIntial implements _SetIntial {
  const _$_SetIntial();

  @override
  String toString() {
    return 'CounterEvent.setIntial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetIntial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() setIntial,
    required TResult Function(int count) reasignValue,
  }) {
    return setIntial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
  }) {
    return setIntial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
    required TResult orElse(),
  }) {
    if (setIntial != null) {
      return setIntial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_SetIntial value) setIntial,
    required TResult Function(_ReasignValue value) reasignValue,
  }) {
    return setIntial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
  }) {
    return setIntial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
    required TResult orElse(),
  }) {
    if (setIntial != null) {
      return setIntial(this);
    }
    return orElse();
  }
}

abstract class _SetIntial implements CounterEvent {
  const factory _SetIntial() = _$_SetIntial;
}

/// @nodoc
abstract class _$ReasignValueCopyWith<$Res> {
  factory _$ReasignValueCopyWith(
          _ReasignValue value, $Res Function(_ReasignValue) then) =
      __$ReasignValueCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class __$ReasignValueCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$ReasignValueCopyWith<$Res> {
  __$ReasignValueCopyWithImpl(
      _ReasignValue _value, $Res Function(_ReasignValue) _then)
      : super(_value, (v) => _then(v as _ReasignValue));

  @override
  _ReasignValue get _value => super._value as _ReasignValue;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_ReasignValue(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReasignValue implements _ReasignValue {
  const _$_ReasignValue({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'CounterEvent.reasignValue(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReasignValue &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$ReasignValueCopyWith<_ReasignValue> get copyWith =>
      __$ReasignValueCopyWithImpl<_ReasignValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() increment,
    required TResult Function() decrement,
    required TResult Function() setIntial,
    required TResult Function(int count) reasignValue,
  }) {
    return reasignValue(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
  }) {
    return reasignValue?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? increment,
    TResult Function()? decrement,
    TResult Function()? setIntial,
    TResult Function(int count)? reasignValue,
    required TResult orElse(),
  }) {
    if (reasignValue != null) {
      return reasignValue(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Increment value) increment,
    required TResult Function(_Decrement value) decrement,
    required TResult Function(_SetIntial value) setIntial,
    required TResult Function(_ReasignValue value) reasignValue,
  }) {
    return reasignValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
  }) {
    return reasignValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Increment value)? increment,
    TResult Function(_Decrement value)? decrement,
    TResult Function(_SetIntial value)? setIntial,
    TResult Function(_ReasignValue value)? reasignValue,
    required TResult orElse(),
  }) {
    if (reasignValue != null) {
      return reasignValue(this);
    }
    return orElse();
  }
}

abstract class _ReasignValue implements CounterEvent {
  const factory _ReasignValue({required final int count}) = _$_ReasignValue;

  int get count => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReasignValueCopyWith<_ReasignValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CounterState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CounterCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterCopyWith(_Counter value, $Res Function(_Counter) then) =
      __$CounterCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$CounterCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterCopyWith<$Res> {
  __$CounterCopyWithImpl(_Counter _value, $Res Function(_Counter) _then)
      : super(_value, (v) => _then(v as _Counter));

  @override
  _Counter get _value => super._value as _Counter;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_Counter(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Counter implements _Counter {
  const _$_Counter({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'CounterState(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Counter &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$CounterCopyWith<_Counter> get copyWith =>
      __$CounterCopyWithImpl<_Counter>(this, _$identity);
}

abstract class _Counter implements CounterState {
  const factory _Counter({required final int count}) = _$_Counter;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounterCopyWith<_Counter> get copyWith =>
      throw _privateConstructorUsedError;
}
