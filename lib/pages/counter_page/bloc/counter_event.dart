part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreasingNumberRequestedEvent extends CounterEvent {
  IncreasingNumberRequestedEvent({required this.currentNumber});

  final int currentNumber;
}

class DecreasingNumberRequestedEvent extends CounterEvent {
  DecreasingNumberRequestedEvent({required this.currentNumber});

  final int currentNumber;
}
