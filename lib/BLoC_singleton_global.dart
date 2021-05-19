import 'package:rxdart/rxdart.dart';

class GlobalBloc {




  BehaviorSubject<String> _controller = BehaviorSubject<String>();
  Function(String) get push => _controller.sink.add;
  Stream<String> get stream => _controller;







  static final GlobalBloc _bloc = new GlobalBloc._internal();
  factory GlobalBloc(){
    return _bloc;
  }
  GlobalBloc._internal();





  void dispose(){
    _controller?.close();
  }

  GlobalBloc globalBloc = GlobalBloc();
}
