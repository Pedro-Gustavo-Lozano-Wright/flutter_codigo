import 'package:flutter/material.dart';

class Holder {

  static double number = 12345 ;

  static void message(){

    print('You are Calling Static Method');
  }

}

class MyApp extends StatelessWidget {

  void callStaticMember() {

    print(Holder.number);

  }

  void callStaticFunction() {

    Holder.message();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child:
                          RaisedButton(
                            onPressed: () => callStaticMember(),
                            child: Text(' Click Here To Call Static Variable '),
                            textColor: Colors.white,
                            color: Colors.green,
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                          )
                      ),

                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child:
                          RaisedButton(
                            onPressed: () => callStaticFunction(),
                            child: Text(' Click Here To Call Static Function '),
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                          )
                      ),

                    ])
            )
        )
    );
  }
}