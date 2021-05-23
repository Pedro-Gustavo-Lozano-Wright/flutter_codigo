import 'package:flutter/material.dart';

import 'CounterBloc.dart';
import 'CounterEvent.dart';

class Screen_BLoC extends StatefulWidget {
  @override
  _Screen_BLoCState createState() => _Screen_BLoCState();
}

class _Screen_BLoCState extends State<Screen_BLoC> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BLoC")),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Clics:   '),
              StreamBuilder<int>(
                stream: _counterBloc.counterStream,
                initialData: 0,
                builder: (context, snapshot) {
                  final counter = snapshot.data;
                  return Text('$counter');
                },
              ),
              IconButton(onPressed: () => _incrementCounter(), icon: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }

  void _incrementCounter() {
    _counterBloc.eventSink.add(CounterEvent.Increment);
  }

}
