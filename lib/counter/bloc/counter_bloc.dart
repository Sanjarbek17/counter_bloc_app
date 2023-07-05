import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(const CounterInitial(0)) {
    on<CounterIncremented>((event, emit) {
      emit(CounterInitial(state.value + 1));
    });
    on<CounterDecremented>((event, emit) {
      emit((CounterInitial(state.value - 1)));
    });
  }
}
