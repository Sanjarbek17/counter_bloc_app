part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int value;
  const CounterState(this.value);
}

class CounterInitial extends CounterState {
  const CounterInitial(int value) : super(value);
}
