part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = _Increment;
  const factory CounterEvent.decrement() = _Decrement;
  const factory CounterEvent.setIntial() = _SetIntial;
  const factory CounterEvent.reasignValue({required int count}) = _ReasignValue;
   
}