import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial())
// here execute the CounterInitial constructor
  {
    on<IncrementEvent>(
      (event, emit) => emit(
        CounterState(counterValue: state.counterValue + 1),
      ),
    );
    on<DecrementEvent>(
      (event, emit) => emit(
        CounterState(counterValue: state.counterValue - 1),
      ),
    );
    // on<CounterEvent>((event, emit) {
    //   if (event is IncrementEvent) {
    //     emit(CounterState(counterValue: state.counterValue + 1));
    //   }
    //   if (event is DecrementEvent) {
    //     emit(CounterState(counterValue: state.counterValue - 1));
    //   }
    // });
  }
}
