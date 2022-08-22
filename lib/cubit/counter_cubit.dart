import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void incrementCounter() {
    emit(state);
  }

  void decrementCounter() {
    emit(state - 1);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
