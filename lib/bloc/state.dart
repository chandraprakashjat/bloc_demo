part of 'counter_bloc.dart';

abstract class CounterState {
  final int data;
  CounterState(this.data);
}

class InitialState extends CounterState {
  InitialState() : super(0);
}

class DataState extends CounterState {
  int dataValue;
  DataState(this.dataValue) : super(dataValue);
}
