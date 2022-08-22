import 'package:bloc_demo/bloc/counter_bloc.dart';
import 'package:bloc_demo/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  CounterCubit _counterCubt = CounterCubit();
  CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cubit'),
        ),
        body: Center(
          child: Text('Count Value : ${_counterCubt.state}'),
        ),
        floatingActionButton: Wrap(
          spacing: 20,
          children: [
            FloatingActionButton(
              onPressed: _increment,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrement,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _close,
              child: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }

/* Cubit working
  void _increment() => _counterCubt.incrementCounter();

  void _decrement() => _counterCubt.decrementCounter();

  void _close() => _counterCubt.close();
 */

//Bloc Working
  void _increment() => _counterBloc.add(IncrementEvent());

  void _decrement() => _counterBloc.add(DecrementEvent());

  void _close() => _counterCubt.close();
}
