import 'package:bloc/bloc.dart';

  //clase cubit identificadora de la bariable
class CounterCubit extends Cubit<int> {

  //variable iniciada
  CounterCubit() : super(3);

  //funcion global
  void increment() => emit(state + 1);

  //funcion global
  void decrement() => emit(state - 1);
}
