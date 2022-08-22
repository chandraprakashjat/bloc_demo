import 'package:bloc/bloc.dart';
import 'package:bloc_demo/my_app.dart';
import 'package:bloc_demo/observer.dart';
import 'package:flutter/cupertino.dart';

void main() {
  Bloc.observer = CubitObserver();
  runApp(MyApp());
}
