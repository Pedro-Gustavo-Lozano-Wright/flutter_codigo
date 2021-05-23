import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:isolate';



import 'package:flutter_isolate/flutter_isolate.dart';

class Page_isolate extends StatefulWidget {
  Page_isolate({Key key}) : super(key: key);

  @override
  _Page_isolateState createState() => new _Page_isolateState();
}

class _Page_isolateState extends State<Page_isolate> {
  Isolate _isolate;
  bool _running = false;
  static int _counter = 0;
  String notification = "";
  ReceivePort _receivePort;

  void _start() async {
    _running = true;
    _receivePort = ReceivePort();
    _isolate = await Isolate.spawn(_checkTimer, _receivePort.sendPort);
    _receivePort.listen(_handleMessage, onDone:() {
      print("done!");
    });
  }

  static void _checkTimer(SendPort sendPort) async {
    Timer.periodic(new Duration(seconds: 1), (Timer t) {
      _counter++;
      String msg = 'notification ' + _counter.toString();
      print('SEND: ' + msg);
      sendPort.send(msg);
    });
  }

  void _handleMessage(dynamic data) {
    print('RECEIVED: ' + data);
    setState(() {
      notification = data;
    });
  }

  void _stop() {
    if (_isolate != null) {
      setState(() {
        _running = false;
        notification = '';
      });
      _receivePort.close();
      _isolate.kill(priority: Isolate.immediate);
      _isolate = null;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Isolates'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(notification),
              onPressed: _running ? _stop : _start,
            ),
            //Text(notification,),
          ],
        ),
      ),
      /*floatingActionButton: new FloatingActionButton(
        onPressed: _running ? _stop : _start,
        tooltip: _running ? 'Timer stop' : 'Timer start',
        child: _running ? new Icon(Icons.stop) : new Icon(Icons.play_arrow),
      ),*/
    );
  }


/*

  void isolate2(String arg) {
    print("Isolate2 ");

    Timer.periodic(Duration(seconds:1),(timer)=>print("Timer Running From Isolate 2"));
  }

  void isolate1(String arg) async  {

    final isolate = await FlutterIsolate.spawn(isolate2, "hello2");
    print("Isolate1 ");

    Timer.periodic(Duration(seconds:1),(timer)=>print("Timer Running From Isolate 1"));
  }

  void main_isolate() async {
    WidgetsFlutterBinding.ensureInitialized();

    final isolate = await FlutterIsolate.spawn(isolate1, "hello");
    Timer(Duration(seconds:5), (){print("Pausing Isolate 1");isolate.pause();});
    Timer(Duration(seconds:10),(){print("Resuming Isolate 1");isolate.resume();});
    Timer(Duration(seconds:20),(){print("Killing Isolate 1");isolate.kill();});

  }*/


}



