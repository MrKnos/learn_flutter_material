import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(number: 0)) {
    on<IncreasingNumberRequestedEvent>(_onIncreasingNumberRequestedEvent);
    on<DecreasingNumberRequestedEvent>(_onDecreasingNumberRequestedEvent);
  }

  void _onIncreasingNumberRequestedEvent(
    IncreasingNumberRequestedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterState(number: event.currentNumber + 1));
  }

  void _onDecreasingNumberRequestedEvent(
    DecreasingNumberRequestedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterState(number: event.currentNumber - 1));
  }
}
