import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment(),
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('  $state  ', style: textTheme.headline1);
              },
            ),
            RaisedButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement(),
            ),
          ],
        ),
      ),
    );
  }
}
