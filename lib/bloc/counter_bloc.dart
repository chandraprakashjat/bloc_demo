import 'dart:async';

import 'package:bloc/bloc.dart';
part 'state.dart';
part 'event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<IncrementEvent>(_mapIncrementEvent);
    on<DecrementEvent>(_mapDecrementEvent);
  }

  FutureOr<void> _mapIncrementEvent(
      IncrementEvent event, Emitter<CounterState> emit) {
    emit(DataState(state.data + 1));
  }

  FutureOr<void> _mapDecrementEvent(
      DecrementEvent event, Emitter<CounterState> emit) {
    emit(DataState(state.data - 1));
  }
}
