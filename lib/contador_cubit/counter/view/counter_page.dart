import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';
import 'counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({final Key key}) : super(key: key);

  //bloc provider escuchando toda la rama de hijos
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}
