import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pruebas_y_tests extends StatefulWidget {
  @override
  _pruebas_y_testsState createState() => _pruebas_y_testsState();
}

class _pruebas_y_testsState extends State<pruebas_y_tests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagen")),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 300,
                        decoration: BoxDecoration(color: Colors.indigo),
                        alignment: Alignment(0, 0),
                        child: Text(
                          "Imagen",
                          style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                ),
                RaisedButton(
                  child: Text("Cerrar esta pantalla"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}

