import 'package:flutter/material.dart';

class Sistema extends StatefulWidget {
  @override
  _SistemaState createState() => _SistemaState();
}

class _SistemaState extends State<Sistema> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sistema")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(color: Colors.indigoAccent),
              alignment: Alignment(0, 0),
              child: Text(
                "Sistema",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}

