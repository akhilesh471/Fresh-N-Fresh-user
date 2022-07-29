import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<_Increment>((event, emit) {
      final currentState=state.count;
      emit(CounterState(count: currentState+1));
      
    });
    on<_Decrement>((event, emit) {
      final currentState=state.count;
      if(currentState!=1){
        emit(CounterState(count: currentState-1));
      }
    });
  }
}
