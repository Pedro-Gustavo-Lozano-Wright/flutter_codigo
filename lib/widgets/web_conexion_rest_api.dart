import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class web_conexion extends StatefulWidget {
  @override
  _web_conexionState createState() => _web_conexionState();
}

class _web_conexionState extends State<web_conexion> {
  String text_info = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("web_conexion_rest_api")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView(children: <Widget>[
              OutlineButton(
                onPressed: () {
                  main_coneccion1();
                },
                child: Text("tomar datos de la web 1"),
              ),
              OutlineButton(
                onPressed: () {
                },
                child: Text(""),
              ),
              OutlineButton(
                onPressed: () {
                },
                child: Text(""),
              ),
              OutlineButton(
                onPressed: () {
                },
                child: Text(""),
              ),
              Container(
                height: 20,
              ),
              Text(text_info),
              Container(
                height: 20,
              ),
              RaisedButton(
                child: Text("Cerrar esta pantalla"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]),
          )
        ],
      ),
    );
  }

  Future<void> message1() async {
    print('Esperando...');

    var url = Uri.parse('https://flutter.dev/');
    var response =
    await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    setState(() {
      text_info = '${response.body}';
    });
  }

  Future<void> main_coneccion1() async {
    await message1();
  }

}
