part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({required int count}) = _Counter;
  factory CounterState.initial(){
    return CounterState(count: 1);
  }
}
